<?php
    if (isset($_POST['updateBtn'])) {
        $mysql->execute("update `_tbl_Settings_Params` set `ParamValue`='".$_POST['MinWithdrawal']."' where ParamCode='MinWithdrawal'");  
        $mysql->execute("update `_tbl_Settings_Params` set `ParamValue`='".$_POST['MaxWithdrawal']."' where ParamCode='MaxWithdrawal'");  
        $successmessage = "Successfully updated";
    }
?>
 
            <div class="app-main__outer">
                <div class="app-main__inner">
                    <div class="app-page-title">
                        <div class="page-title-wrapper">
                            <div class="page-title-heading">
                                <div class="page-title-icon">
                                    <i class="pe-7s-display1 icon-gradient bg-premium-dark">
                                    </i>
                                </div>
                                <div>Settings
                                
                                </div>
                            </div>
                        </div>
                    </div>       
                    
                     
                    <div class="tab-content">
                        <div class="tab-pane tabs-animation fade active show" id="tab-content-1" role="tabpanel">
                            <div class="row">
                                <div class="col-md-4">
                                 
                                    <div class="card">
                <div class="card-body">
                    <div class="row mb15">
                        <div class="col-md-12 col-xs-12 b-r">
                            <a href="dashboard.php?action=application/GeneralSettings">General Settings</a>
                        </div>
                    </div>
                    <div class="row mb15">
                        <div class="col-md-12 col-xs-12 b-r">
                            <a href="dashboard.php?action=application/EnrollmentPackage">Enrollment Packages</a>
                        </div>
                    </div>
                    <div class="row mb15">
                        <div class="col-md-12 col-xs-12 b-r">
                            <a href="dashboard.php?action=application/WithdrawalSettings">Withdrawal Settings</a>
                        </div>
                    </div>
                    <div class="row mb15">
                        <div class="col-md-12 col-xs-12 b-r">
                            <a href="dashboard.php?action=application/PayoutSettings">Payout Settings</a>
                        </div>
                    </div>
                </div>
            </div>
                                </div>
                                
                                <div class="col-md-8">
                                    <div class="main-card mb-3 card">
                                        <div class="card-body">
                                        
                        <form method="post" action="">
                        <h4 class="card-title text-orange"><i class="ti-user"></i>&nbsp;&nbsp;Withdrawal Settings</h4>
                        <div class="row mb15">
                            <div class="col-md-12 col-xs-12 b-r">
                                <span style="color:green;"><?php echo $successmessage;?>&nbsp;</span>
                            </div>
                        </div>
                        <?php $settings = $mysql->select("select * from `_tbl_Settings_Params` where ParamCode in ('MinWithdrawal')"); ?>
                        <div class="row mb15">
                            <div class="col-md-12 col-xs-6 b-r">
                                <strong><?php echo $settings[0]['ParamLabel'];?></strong>
                                <br>
                                <input type="text" name="MinWithdrawal" id="MinWithdrawal" class="form-control" value="<?php echo $settings[0]['ParamValue'];?>">
                            </div>
                        </div>
                        <?php $settings = $mysql->select("select * from `_tbl_Settings_Params` where ParamCode in ('MaxWithdrawal')"); ?>
                        <div class="row mb15"> 
                            <div class="col-md-12 col-xs-6 b-r"> 
                                <strong><?php echo $settings[0]['ParamLabel'];?></strong>
                                <br>
                                <input type="text" name="MaxWithdrawal" id="MaxWithdrawal" class="form-control" value="<?php echo $settings[0]['ParamValue'];?>">
                            </div>
                        </div>          
                        <div class="row mb15">
                            <div class="col-md-4 col-xs-6 b-r">
                                <button type="submit" name="updateBtn" id="updateBtn" class="btn btn-primary" >Update</button>
                            </div>
                        </div>
                    </form>
                 </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>




