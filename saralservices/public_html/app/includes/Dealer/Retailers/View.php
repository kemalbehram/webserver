
<?php 
    $sql= $mysql->select("select * from `_tbl_Members` where  md5(Concat('J!',`MemberID`))='".$_GET['d']."'");
 /* if (isset($_POST['ApprovePan'])) {
    $id=$mysql->execute("update `_tbl_Attachments` set `IsVerified`='1',
                                                   `Verifiedon`='".date("Y-m-d H:i:s")."' 
                                                   where `MemberCode`='".$sql[0]['MemberCode']."' and AttachmentType='PanCard'");
    if(sizeof($id)>0){   ?>
        <script>location.href=location.href;</script>
    <?php } 
  }
  if (isset($_POST['RejectPan'])) {
    $id=$mysql->execute("update `_tbl_Attachments` set `IsVerified`='2',
                                                   `Verifiedon`='".date("Y-m-d H:i:s")."' 
                                                   where `MemberCode`='".$sql[0]['MemberCode']."' and AttachmentType='PanCard'");
    if(sizeof($id)>0){   ?>
        <script>location.href=location.href;</script>
    <?php } 
  }
  if (isset($_POST['ApproveAadhaar'])) {
    $id=$mysql->execute("update `_tbl_Attachments` set `IsVerified`='1',
                                                   `Verifiedon`='".date("Y-m-d H:i:s")."' 
                                                   where `MemberCode`='".$sql[0]['MemberCode']."' and AttachmentType='AadhaarCard'");
    if(sizeof($id)>0){   ?>
        <script>location.href=location.href;</script>
    <?php } 
  }
  if (isset($_POST['RejectAadhaar'])) {
    $id=$mysql->execute("update `_tbl_Attachments` set `IsVerified`='2',
                                                   `Verifiedon`='".date("Y-m-d H:i:s")."' 
                                                   where `MemberCode`='".$sql[0]['MemberCode']."' and AttachmentType='AadhaarCard'");
    if(sizeof($id)>0){   ?>
        <script>location.href=location.href;</script>
    <?php } 
  }  */
?>
 
        
        <div class="main-panel">
            <div class="container">
                <div class="page-inner">
                     
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title" style="float: left;">View Retailer Information</div>
                                    <div class="dropdown dropdown-kanban" style="float: right;padding-top:10px;">
                                                    <button class="" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none;font-size:14px;background:none !important;padding-right:0px;margin-right:0px;cursor:pointer">
                                                        <i class="icon-options-vertical"></i>
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="dashboard.php?action=Retailers/LoginLog&d=<?php echo $_GET['d'];?>&Status=All" draggable="false">Login Log</a>
                                                    </div>
                                                </div>
                                </div>
                                    <div class="card-body">
                                        <div class="form-group form-show-validation row">
                                            <label for="Name" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Dealer Name </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['MemberName'];?></div>
                                        </div>
                                        <div class="form-group form-show-validation row">
                                            <label for="MobileNumber" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Gender </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['Gender'];?></div>
                                        </div>
                                        <div class="form-group form-show-validation row">
                                            <label for="MobileNumber" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Mobile Number </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['MobileNumber'];?></div>
                                        </div>
                                        <div class="form-group form-show-validation row">
                                            <label for="MobileNumber" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Email ID </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['EmailID'];?></div>
                                        </div>
                                        <div class="form-group form-show-validation row">
                                            <label for="CommunicationAddress" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Address Line 1 </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['Address1'];?> <?php echo $sql[0]['Address1'];?></div>
                                        </div>
                                        <div class="form-group form-show-validation row">
                                            <label for="Aadhaar" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Pincode </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['PostalCode'];?></div>
                                        </div>
                                        <div class="form-group form-show-validation row">
                                            <label for="Aadhaar" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">GSTIN </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['GSTIN'];?></div>
                                        </div>
                                           <div class="form-group form-show-validation row">
                                            <label for="Aadhaar" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Status </label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><span class="<?php echo ($sql[0]['IsActive']==1) ? 'Activedot' : 'Deactivedot';?>"></span>&nbsp;&nbsp;&nbsp;<?php echo $sql[0]['IsActive']==1 ? "Active" : "Deactivated";?></div>
                                        </div>
                                         <div class="form-group form-show-validation row">
                                            <label for="Aadhaar" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left">Created On</label>
                                            <div class="col-lg-4 col-md-9 col-sm-8"><?php echo $sql[0]['CreatedOn'];?></div>
                                        </div>
                                        </div>
                                        <div class="card-action">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <a href="dashboard.php?action=Retailers/Manage&Status=All" id="show-signup" class="link">Back</a>
                                                </div>                                        
                                            </div>
                                        </div>
                                    </div>                                                                                             
                                </div>
                            </div>
                        </div>
                    </div>
             
        </div>

         
     