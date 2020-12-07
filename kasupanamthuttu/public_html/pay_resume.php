<?php
session_start();    
date_default_timezone_set('Asia/Calcutta');
include_once("controller/class.DatabaseController.php");
$mysql = new MySqldatabase("localhost","kasupana_user","mysqlPwd@123","kasupana_database");
 
$userinformation = $mysql->select("select * from _full_time_job_resume where md5(concat('x',ResumeID))='".$_POST['record']."'");
//$jobtypes = $mysql->select("select * from _tbl_JobTypes where JobTypeID='". $_POST['JobType']."'");
//if (sizeof($jobtypes)==0)  {
  //  echo "Error";
    //exit;
//}
$amount = 10;
$paymentfor = strtolower("resume_".$userinformation[0]['ResumeID']);
$_POST['paymentroute']=1;        
$paymentid = $mysql->insert("_tblPayments",array("TxnDate"    => date("Y-m-d H:i:s"),
                                                 "TxnAmount"  => $amount,
                                                 "ClientID"   => $userinformation[0]['ResumeID'],
                                                 "JobTypeID"  => "0",
                                                 "PaymentFor" => $paymentfor));
                                                 
if (isset($_POST['paymentroute']) && $_POST['paymentroute']==1) {
    $mysql->execute("update _tblPayments set PaymentFrom='PayU' where PaymentID='".$paymentid."'");
    $MERCHANT_KEY = "8Pkzifyu";
    $SALT = "YqbXwgaFWV";
    $PAYU_BASE_URL = "https://secure.payu.in";            // For Production Mode
    $action = '';
    $posted = array();
    $posted['key']=$MERCHANT_KEY;
    $posted['txnid']=$paymentid;
    $posted['amount']=$amount;
    $posted['firstname']=$userinformation[0]['ResumeName'];
    $posted['email']=$userinformation[0]['EmailID'];
    $posted['phone']=$userinformation[0]['MobileNumber'];
    $posted['productinfo']="";
    $posted['surl']='https://www.kasupanamthuttu.com/ResumePayment';
    $posted['furl']='https://www.kasupanamthuttu.com/ResumePayment';
    $posted['service_provider']="payu_paisa";

    $txnid = $paymentid;
    $hash = '';
    $hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
    //$posted['productinfo'] = json_encode(json_decode('[{"name":"tutionfee","description":"","value":"500","isRequired":"false"},{"name":"developmentfee","description":"monthly tution fee","value":"1500","isRequired":"false"}]'));
    $posted['productinfo'] = json_encode(json_decode('[{"name":"Membershipfee","description":"","value":"'.$amount.'","isRequired":"false"}]'));
    $hashVarsSeq = explode('|', $hashSequence);
    $hash_string = '';    
    foreach($hashVarsSeq as $hash_var) {
        $hash_string .= isset($posted[$hash_var]) ? $posted[$hash_var] : '';
        $hash_string .= '|';
    }
    $hash_string .= $SALT;
    $hash = strtolower(hash('sha512', $hash_string));
    $action = $PAYU_BASE_URL . '/_payment';
?>
<form action="<?php echo $action; ?>" method="post" name="payuForm" id="payuForm">
    <input type="hidden" name="key" value="<?php echo $MERCHANT_KEY ?>" />
    <input type="hidden" name="hash" value="<?php echo $hash ?>"/>
    <input type="hidden" name="txnid" value="<?php echo $txnid ?>" />
    <input type="hidden" name="amount" value="<?php echo $amount; ?>" />
    <input type="hidden" name="firstname" id="firstname" value="<?php echo $posted['firstname']; ?>" /> 
    <input type="hidden" name="email" id="email" value="<?php echo $posted['email']; ?>" />
    <input type="hidden" name="phone" value="<?php echo $posted['phone']; ?>" />
    <textarea style="height:0px;width:0px;" name="productinfo"><?php echo $posted['productinfo']; ?></textarea>
    <input type="hidden" name="surl" value="<?php echo $posted['surl']; ?>"  />
    <input type="hidden" name="furl" value="<?php echo $posted['furl']; ?>"  />
    <input type="hidden" name="service_provider" value="payu_paisa" size="64" />
</form>
<script>document.getElementById("payuForm").submit();</script>
<?php exit; } ?>




 <?php
if (isset($_POST['paymentroute']) && $_POST['paymentroute']==2) {
    $mysql->execute("update _tblPayments set PaymentFrom='Paypal' where PaymentID='".$paymentid."'");
    $txnid = $paymentid;
?>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" name="payuForm" id="payuForm">
    <input type='hidden' name='business' value='Kasupanamthuttu1@gmail.com'>
    <input type='hidden' name='item_name' value="Wallet Update"> 
    <input type='hidden'  name='item_number' value='GAME#1'> 
    <input type='hidden' name='amount' value='<?php echo $amount;?>'> 
    <input type='hidden' name='no_shipping' value='1'> 
    <input type='hidden' name='txn_id' value='<?php echo $paymentid;?>'> 
    <input type='hidden' name='currency_code' value='INR'>
    <input type='hidden' name='rm' value='2'> 
    <input type='hidden' name='cancel_return' value='https://www.kasupanamthuttu.com/WalletPaymentPaypal'>
    <input type='hidden' name='return' value='https://www.kasupanamthuttu.com/WalletPaymentPaypal'>
    <input type="hidden" name="cmd" value="_xclick"> 
</form>
<script>document.getElementById("payuForm").submit();</script>
<?php } ?>