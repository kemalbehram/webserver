

        <div class="main-panel">
            <div class="container">
                <div class="page-inner">
                        <div class="form-group row">
                            <div class="col-sm-6"><h4 class="page-title"></h4></div>
                            <div class="col-sm-6" style="text-align:right;padding-top:5px;color:skyblue;">
                                <a href="dashboard.php?action=ManageForm16ByAgent&Status=All&MCode=<?php echo $_GET['MCode'];?>"><?php if($_GET['Status']=="All") { ?><small style="font-weight:bold;text-decoration:underline;"><?php } else{ ?><small><?php } ?>All</small></a>&nbsp;|&nbsp;
                                <a href="dashboard.php?action=ManageForm16ByAgent&Status=Submitted&MCode=<?php echo $_GET['MCode'];?>"><?php if($_GET['Status']=="Submitted") { ?><small style="font-weight:bold;text-decoration:underline;"><?php } else{ ?><small><?php } ?>Submitted</small></a>&nbsp;|&nbsp;
                                <a href="dashboard.php?action=ManageForm16ByAgent&Status=Accepted&MCode=<?php echo $_GET['MCode'];?>"><?php if($_GET['Status']=="Accepted") { ?><small style="font-weight:bold;text-decoration:underline;"><?php } else{ ?><small><?php } ?>Accepted</small></a>&nbsp;|&nbsp;
                                <a href="dashboard.php?action=ManageForm16ByAgent&Status=InProccessed&MCode=<?php echo $_GET['MCode'];?>"><?php if($_GET['Status']=="InProccessed") { ?><small style="font-weight:bold;text-decoration:underline;"><?php } else{ ?><small><?php } ?>InProcess</small></a>&nbsp;|&nbsp;
                                <a href="dashboard.php?action=ManageForm16ByAgent&Status=Completed&MCode=<?php echo $_GET['MCode'];?>"><?php if($_GET['Status']=="Completed") { ?><small style="font-weight:bold;text-decoration:underline;"><?php } else{ ?><small><?php } ?>Completed</small></a>&nbsp;|&nbsp;
                                <a href="dashboard.php?action=ManageForm16ByAgent&Status=Rejected&MCode=<?php echo $_GET['MCode'];?>"><?php if($_GET['Status']=="Rejected") { ?><small style="font-weight:bold;text-decoration:underline;"><?php } else{ ?><small><?php } ?>Rejected</small></a>
                            </div> 
                        </div>
                        <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Customer Details</div>
                                </div>
                                <div class="card-body"> 
                                <?php $member= $mysql->select("select * from `_tbl_Members` where `MemberCode`='".$_GET['MCode']."'"); ?>
                                    <div class="form-group form-show-validation row" style="padding:0px">
                                        <label for="AccountName" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left"  style="font-weight:normal">Customer Name  </label>
                                        <div class="col-lg-4 col-md-9 col-sm-8">:&nbsp;<?php echo $member[0]['MemberName'];?></div>
                                    </div>
                                    <div class="form-group form-show-validation row" style="padding:0px">
                                        <label for="AccountName" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left"  style="font-weight:normal">Customer Mobile Number  </label>
                                        <div class="col-lg-4 col-md-9 col-sm-8">:&nbsp;<?php echo $member[0]['MobileNumber'];?></div>
                                    </div>
                                    <div class="form-group form-show-validation row" style="padding:0px">
                                        <label for="AccountName" class="col-lg-3 col-md-3 col-sm-4 mt-sm-2 text-left"  style="font-weight:normal">Customer Email ID  </label>
                                        <div class="col-lg-4 col-md-9 col-sm-8">:&nbsp;<?php echo $member[0]['EmailID'];?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <?php if($_GET['Status']=="All") {  echo "All Form";}?>
                                        <?php if($_GET['Status']=="Submitted") {  echo "Submitted Form";}?>
                                        <?php if($_GET['Status']=="Accepted") {  echo "Accepted Form";}?>
                                        <?php if($_GET['Status']=="InProccessed") {  echo "InProcess Form";}?>
                                        <?php if($_GET['Status']=="Completed") {  echo "Completed Form";}?>
                                        <?php if($_GET['Status']=="Rejected") {  echo "Rejected Form";}?>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table id="myTable" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Job ID</th>
                                                <th>Financial Year</th>
                                                <th>Name</th>
                                                <th>Submitted On</th>
                                                <th>Status</th>
                                                <th>Status On</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                                if( $_GET['Status']=="All"){
                                                    $sql= $mysql->select("select * from `_tbl_form_16` where FormByCode='".$_GET['MCode']."'");
                                                }
                                                if( $_GET['Status']=="Submitted"){
                                                   $sql= $mysql->select("select * from `_tbl_form_16` where InProccess='0' and FormByCode='".$_GET['MCode']."'"); 
                                                }
                                                if( $_GET['Status']=="Accepted"){
                                                     $sql= $mysql->select("select * from `_tbl_form_16` where InProccess='1' and FormByCode='".$_GET['MCode']."'");
                                                }
                                                if( $_GET['Status']=="InProccessed"){
                                                   $sql= $mysql->select("select * from `_tbl_form_16` where IsApproved='1' and Completed='0' and FormByCode='".$_GET['MCode']."'");  
                                                }
                                                if( $_GET['Status']=="Completed"){
                                                   $sql= $mysql->select("select * from `_tbl_form_16` where Completed='1' and FormByCode='".$_GET['MCode']."'");  
                                                }
                                                if( $_GET['Status']=="Rejected"){
                                                   $sql= $mysql->select("select * from `_tbl_form_16` where IsRejected='1' and Completed='0' and FormByCode='".$_GET['MCode']."'");  
                                                }
                                            ?>                                                       
                                            <?php 
                                              foreach($sql as $form16){
                                            ?>
                                            <tr>
                                                <td><?php echo $form16['id'];?></td>
                                                <td><?php echo $form16['FinancialYear'];?></td>
                                                <td><?php echo $form16['Name'];?></td>
                                                <td><?php echo $form16['CreatedOn'];?></td>
                                                <td>
                                                    <?php if($form16['InProccess']==0){  echo "Submitted"; } ?>
                                                    <?php if($form16['InProccess']==1){ echo "Accepted"; } ?>
                                                    <?php if($form16['IsApproved']==1 && $form16['Completed']==0){ echo "InProcess"; } ?>
                                                    <?php if($form16['Completed']==1){ echo "Completed"; } ?>
                                                    <?php if($form16['IsRejected']==1 && $form16['Completed']==0){ echo "Rejected"; } ?>
                                                </td>
                                                <td>
                                                    <?php if($form16['InProccess']==0){ echo $form16['CreatedOn']; } ?>
                                                    <?php if($form16['InProccess']==1){ echo $form16['InProccessOn']; } ?>
                                                    <?php if($form16['IsApproved']==1 && $form16['Completed']==0){ echo $form16['VerifiedOn']; } ?>
                                                    <?php if($form16['Completed']==1){ echo $form16['InProcessCompleteOn']; } ?>
                                                    <?php if($form16['IsRejected']==1 && $form16['Completed']==0){ echo $form16['VerifiedOn']; } ?>
                                                </td>
                                                <td>
                                                    <div class="dropdown dropdown-kanban" style="float: right;">
                                                        <button class="" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none;font-size:14px;background:none !important;padding-right:0px;margin-right:0px;cursor:pointer">
                                                            <i class="icon-options-vertical"></i>
                                                        </button>
                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                            <a class="dropdown-item" href="dashboard.php?action=ViewForm16&FCode=<?php echo $form16['id'];?>" draggable="false">View Form</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php } ?>
                                            <?php if(sizeof($form16)==0){?>
                                                <tr>
                                                    <td colspan="7" style="text-align: center;">No Forms found</td>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>                                                                                             
                        </div>
                    </div>
                </div>
            </div>
          
        </div>
         
       
    </div>
   