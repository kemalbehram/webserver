    <?php include_once("game_clients/menu.php");?>
    
    
                 <?php include_once("game_clients/menu.php");?>
     <div class="line">
            <div class="box margin-bottom">
               
                  <!-- CONTENT -->
                  <article class="s-9 m-7 l-9">
                 
<h4>My Account Summary</h4>
 
                                                
<div class="row">

   <div class="col-sm-12">
   

    <table style="font-family:arial;font-size:12px;color:#444444;border:1px solid #F9D49D;border-bottom:1px solid #333;width:100%" cellpadding="8" cellspacing="0" width="100%">  
        <tr style="background:#7dcde8;color:#333;font-weight:bold;text-align:center;">
            <td style="border-top:1px solid #333;border-bottom:1px solid #333;">Txn Date</td>
            <td style="border-top:1px solid #333;border-bottom:1px solid #333;">Particulars</td>
            <td style="border-top:1px solid #333;border-bottom:1px solid #333;">Cr. Amount</td>
            <td style="border-top:1px solid #333;border-bottom:1px solid #333;">Dt. Amount</td>
            <td style="border-top:1px solid #333;border-bottom:1px solid #333;">Available Balance</td>
        </tr>
        <?php
            $data = $mysql->select("select * from _acc_txn where userid='".$_SESSION['USER']['userid']."' order by txnid desc");
            $i = 0;
            foreach($data as $d) {
                 $bg = ($i%2 ==0) ? "#FFF2E0" : "#FFF8EF";  
        ?>
            <tr style="background:<?php echo $bg;?>">
                <td><?php echo $d['txndate'];?></td>
                <td><?php echo $d['particulars'];?></td>
                <td style="text-align:right"><?php echo number_format($d['cramount'],2);?></td>
                <td style="text-align:right"><?php echo number_format($d['dramount'],2);?></td>
                <td style="text-align:right"><?php echo number_format($d['abalance'],2);?></td>
            </tr>
        <?php } ?>
    </table>  
    
    </div>
    
   
   </div>
   </article>
   </div>
   </div>