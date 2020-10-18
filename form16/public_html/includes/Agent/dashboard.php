<div class="main-panel full-height">
            <div class="container">
                <div class="panel-header">
                    <div class="page-inner border-bottom pb-0 mb-3">
                        <div class="d-flex align-items-left flex-column">
                            <h2 class="pb-2 fw-bold">Dashboard</h2>
                            <div class="nav-scroller d-flex">
                                <div class="nav nav-line nav-color-info d-flex align-items-center justify-contents-center">
                                    <a class="nav-link" href="dashboard.php?action=ManageForm16&Status=Submitted">Submitted Jobs<span class="badge badge-info ml-2">
                                    <?php echo sizeof($mysql->select("select * from `_tbl_form_16` where InProccess='0' and `AgentID`='".$_SESSION['User']['AgentID']."'"));  ?>
                                    </span></a>
                                    <a class="nav-link" href="dashboard.php?action=ManageForm16&Status=InProccessed">Processing Jobs
                                    <span class="badge badge-warning ml-2">
                                    <?php echo sizeof($mysql->select("select * from `_tbl_form_16` where    IsApproved='1' and Completed='0' and `AgentID`='".$_SESSION['User']['AgentID']."'"));  ?>
                                    </span
                                    </a>
                                    <a class="nav-link" href="dashboard.php?action=ManageForm16&Status=Rejected">Cancelled Jobs<span class="badge badge-danger ml-2">
                                     <?php echo sizeof($mysql->select("select * from `_tbl_form_16` where    IsRejected='1' and Completed='0' and `AgentID`='".$_SESSION['User']['AgentID']."'"));  ?>
                                    </span></a>
                                </div>
                                <div class="d-flex d-md-inline ml-md-auto py-2 py-md-0">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="page-inner">
                    <div class="row">
                        <div class="col-sm-6 col-md-3">
                            <div class="card card-stats card-round">
                                <div class="card-body ">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="icon-big text-center">
                                                <i class="flaticon-user text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="col-9 col-stats">
                                            <div class="numbers">
                                                <p class="card-category">Customers</p>
                                                <h4 class="card-title">
                                                <?php
                                                   echo sizeof($mysql->select("select MemberID from _tbl_Members where `AgentID`='".$_SESSION['User']['AgentID']."'"));
                                                ?>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="card card-stats card-round">
                                <div class="card-body ">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="icon-big text-center">
                                                <i class="flaticon-network text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="col-9 col-stats">
                                            <div class="numbers">
                                                <p class="card-category">Wallet Balance</p>
                                                <h4 class="card-title">
                                                <?php echo number_format(AgentWalletBalance($_SESSION['User']['AgentID']),2);?>
                                                 </h4>
                                                 <a href="dashboard.php?action=UpdateMyWallet">Update wallet</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="card card-stats card-round">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="icon-big text-center">
                                                <i class="flaticon-file-1 text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="col-9 col-stats">
                                            <div class="numbers">
                                                <p class="card-category">Completed Jobs</p>
                                                <h4 class="card-title">
                                                <?php
                                                     
                                                      echo sizeof($mysql->select("select id from _tbl_form_16 where Completed='1' and `AgentID`='".$_SESSION['User']['AgentID']."'"));
                                                      echo "/";
                                                      echo sizeof($mysql->select("select * from _tbl_form_16 where `AgentID`='".$_SESSION['User']['AgentID']."'"));
                                                ?>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="card card-stats card-round">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-5">
                                            <div class="icon-big text-center">
                                                <i class="flaticon-coins text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="col-7 col-stats">
                                            <div class="numbers">
                                                <p class="card-category">Invoiced</p>
                                                <h4 class="card-title">
                                                0.00
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-head-row">
                                        <div class="card-title">Recent Activities</div>
                                        <!--<div class="card-tools">
                                            <a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
                                                <span class="btn-label">
                                                    <i class="fa fa-pencil"></i>
                                                </span>
                                                Export
                                            </a>
                                            <a href="#" class="btn btn-info btn-border btn-round btn-sm">
                                                <span class="btn-label">
                                                    <i class="fa fa-print"></i>
                                                </span>
                                                Print
                                            </a>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-container" style="min-height: 375px"><div style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                        <canvas id="statisticsChart" style="display: block; width: 700px; height: 375px;" width="700" height="375" class="chartjs-render-monitor"></canvas>
                                    </div>
                                    <div id="myChartLegend"><ul class="0-legend html-legend"><li><span style="background-color:#f3545d"></span>Subscribers</li><li><span style="background-color:#fdaf4b"></span>New Visitors</li><li><span style="background-color:#177dff"></span>Active Users</li></ul></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            
                             <div class="card card-warning bg-warning-gradient">
                                <div class="card-body">
                                    <h4 class="mb-1 fw-bold">Tasks Progress</h4>
                                    <div id="task-complete" class="chart-circle mt-4 mb-3"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                 
                   <!--  
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Top Products</div>
                                </div>
                                <div class="card-body pb-0">
                                    <div class="d-flex">
                                        <div class="avatar">
                                            <img src="../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h6 class="fw-bold mb-1">CSS</h6>
                                            <small class="text-muted">Cascading Style Sheets</small>
                                        </div>
                                        <div class="d-flex ml-auto align-items-center">
                                            <h3 class="text-info fw-bold">+$17</h3>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="d-flex">
                                        <div class="avatar">
                                            <img src="../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h6 class="fw-bold mb-1">J.CO Donuts</h6>
                                            <small class="text-muted">The Best Donuts</small>
                                        </div>
                                        <div class="d-flex ml-auto align-items-center">
                                            <h3 class="text-info fw-bold">+$300</h3>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="d-flex">
                                        <div class="avatar">
                                            <img src="../assets/img/logoproduct3.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h6 class="fw-bold mb-1">Ready Pro</h6>
                                            <small class="text-muted">Bootstrap 4 Admin Dashboard</small>
                                        </div>
                                        <div class="d-flex ml-auto align-items-center">
                                            <h3 class="text-info fw-bold">+$350</h3>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="pull-in"><div style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-title fw-mediumbold">Suggested People</div>
                                    <div class="card-list">
                                        <div class="item-list">
                                            <div class="avatar">
                                                <img src="../assets/img/jm_denis.jpg" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                            <div class="info-user ml-3">
                                                <div class="username">Jimmy Denis</div>
                                                <div class="status">Graphic Designer</div>
                                            </div>
                                            <button class="btn btn-icon btn-primary btn-round btn-xs">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="item-list">
                                            <div class="avatar">
                                                <img src="../assets/img/chadengle.jpg" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                            <div class="info-user ml-3">
                                                <div class="username">Chad</div>
                                                <div class="status">CEO Zeleaf</div>
                                            </div>
                                            <button class="btn btn-icon btn-primary btn-round btn-xs">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="item-list">
                                            <div class="avatar">
                                                <img src="../assets/img/talha.jpg" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                            <div class="info-user ml-3">
                                                <div class="username">Talha</div>
                                                <div class="status">Front End Designer</div>
                                            </div>
                                            <button class="btn btn-icon btn-primary btn-round btn-xs">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="item-list">
                                            <div class="avatar">
                                                <img src="../assets/img/mlane.jpg" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                            <div class="info-user ml-3">
                                                <div class="username">John Doe</div>
                                                <div class="status">Back End Developer</div>
                                            </div>
                                            <button class="btn btn-icon btn-primary btn-round btn-xs">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="item-list">
                                            <div class="avatar">
                                                <img src="../assets/img/talha.jpg" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                            <div class="info-user ml-3">
                                                <div class="username">Talha</div>
                                                <div class="status">Front End Designer</div>
                                            </div>
                                            <button class="btn btn-icon btn-primary btn-round btn-xs">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="item-list">
                                            <div class="avatar">
                                                <img src="../assets/img/jm_denis.jpg" alt="..." class="avatar-img rounded-circle">
                                            </div>
                                            <div class="info-user ml-3">
                                                <div class="username">Jimmy Denis</div>
                                                <div class="status">Graphic Designer</div>
                                            </div>
                                            <button class="btn btn-icon btn-primary btn-round btn-xs">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-primary bg-primary-gradient">
                                <div class="card-body">
                                    <h4 class="mt-3 b-b1 pb-2 mb-4 fw-bold">Active user right now</h4>
                                    <h1 class="mb-4 fw-bold">17</h1>
                                    <h4 class="mt-3 b-b1 pb-2 mb-5 fw-bold">Page view per minutes</h4>
                                    <div id="activeUsersChart"> </div>
                                    <h4 class="mt-5 pb-3 mb-0 fw-bold">Top active pages</h4>
                                    <ul class="list-unstyled">
                                        <li class="d-flex justify-content-between pb-1 pt-1"><small>/product/readypro/index.html</small> <span>7</span></li>
                                        <li class="d-flex justify-content-between pb-1 pt-1"><small>/product/atlantis/demo.html</small> <span>10</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Feed Activity</div>
                                </div>
                                <div class="card-body">
                                    <ol class="activity-feed">
                                        <li class="feed-item feed-item-secondary">
                                            <time class="date" datetime="9-25">Sep 25</time>
                                            <span class="text">Responded to need <a href="#">"Volunteer opportunity"</a></span>
                                        </li>
                                        <li class="feed-item feed-item-success">
                                            <time class="date" datetime="9-24">Sep 24</time>
                                            <span class="text">Added an interest <a href="#">"Volunteer Activities"</a></span>
                                        </li>
                                        <li class="feed-item feed-item-info">
                                            <time class="date" datetime="9-23">Sep 23</time>
                                            <span class="text">Joined the group <a href="single-group.php">"Boardsmanship Forum"</a></span>
                                        </li>
                                        <li class="feed-item feed-item-warning">
                                            <time class="date" datetime="9-21">Sep 21</time>
                                            <span class="text">Responded to need <a href="#">"In-Kind Opportunity"</a></span>
                                        </li>
                                        <li class="feed-item feed-item-danger">
                                            <time class="date" datetime="9-18">Sep 18</time>
                                            <span class="text">Created need <a href="#">"Volunteer Opportunity"</a></span>
                                        </li>
                                        <li class="feed-item">
                                            <time class="date" datetime="9-17">Sep 17</time>
                                            <span class="text">Attending the event <a href="single-event.php">"Some New Event"</a></span>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-head-row">
                                        <div class="card-title">Support Tickets</div>
                                        <div class="card-tools">
                                            <ul class="nav nav-pills nav-secondary nav-pills-no-bd nav-sm" id="pills-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-today" data-toggle="pill" href="#pills-today" role="tab" aria-selected="true">Today</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link active" id="pills-week" data-toggle="pill" href="#pills-week" role="tab" aria-selected="false">Week</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="pills-month" data-toggle="pill" href="#pills-month" role="tab" aria-selected="false">Month</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="avatar avatar-online">
                                            <span class="avatar-title rounded-circle border border-white bg-info">J</span>
                                        </div>
                                        <div class="flex-1 ml-3 pt-1">
                                            <h6 class="text-uppercase fw-bold mb-1">Joko Subianto <span class="text-warning pl-3">pending</span></h6>
                                            <span class="text-muted">I am facing some trouble with my viewport. When i start my</span>
                                        </div>
                                        <div class="float-right pt-1">
                                            <small class="text-muted">8:40 PM</small>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="d-flex">
                                        <div class="avatar avatar-offline">
                                            <span class="avatar-title rounded-circle border border-white bg-secondary">P</span>
                                        </div>
                                        <div class="flex-1 ml-3 pt-1">
                                            <h6 class="text-uppercase fw-bold mb-1">Prabowo Widodo <span class="text-success pl-3">open</span></h6>
                                            <span class="text-muted">I have some query regarding the license issue.</span>
                                        </div>
                                        <div class="float-right pt-1">
                                            <small class="text-muted">1 Day Ago</small>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="d-flex">
                                        <div class="avatar avatar-away">
                                            <span class="avatar-title rounded-circle border border-white bg-danger">L</span>
                                        </div>
                                        <div class="flex-1 ml-3 pt-1">
                                            <h6 class="text-uppercase fw-bold mb-1">Lee Chong Wei <span class="text-muted pl-3">closed</span></h6>
                                            <span class="text-muted">Is there any update plan for RTL version near future?</span>
                                        </div>
                                        <div class="float-right pt-1">
                                            <small class="text-muted">2 Days Ago</small>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="d-flex">
                                        <div class="avatar avatar-offline">
                                            <span class="avatar-title rounded-circle border border-white bg-secondary">P</span>
                                        </div>
                                        <div class="flex-1 ml-3 pt-1">
                                            <h6 class="text-uppercase fw-bold mb-1">Peter Parker <span class="text-success pl-3">open</span></h6>
                                            <span class="text-muted">I have some query regarding the license issue.</span>
                                        </div>
                                        <div class="float-right pt-1">
                                            <small class="text-muted">2 Day Ago</small>
                                        </div>
                                    </div>
                                    <div class="separator-dashed"></div>
                                    <div class="d-flex">
                                        <div class="avatar avatar-away">
                                            <span class="avatar-title rounded-circle border border-white bg-danger">L</span>
                                        </div>
                                        <div class="flex-1 ml-3 pt-1">
                                            <h6 class="text-uppercase fw-bold mb-1">Logan Paul <span class="text-muted pl-3">closed</span></h6>
                                            <span class="text-muted">Is there any update plan for RTL version near future?</span>
                                        </div>
                                        <div class="float-right pt-1">
                                            <small class="text-muted">2 Days Ago</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->       
                    </div>
                </div>
            </div>
             
        </div>
<script>
<?php
    $tjob = $mysql->select("select * from _tbl_form_16 where `AgentID`='".$_SESSION['User']['AgentID']."'");
    $cjob = $mysql->select("select * from _tbl_form_16 where Completed='1' and `AgentID`='".$_SESSION['User']['AgentID']."'");
    $percentage = 100;
    if (sizeof($tjob)>0 && sizeof($cjob)>0) {
        
        $percentage =  intval((sizeof($cjob)/sizeof($tjob))*100);   
    }
    
     
?>
        $( document ).ready(function() {
  
Circles.create({
    id:           'task-complete',
    radius:       50,
    value:        <?php echo $percentage;?>,
    maxValue:     100,
    width:        5,
    text:         function(value){return value + '%';},
    colors:       ['#36a3f7', '#fff'],
    duration:     400,
    wrpClass:     'circles-wrp',
    textClass:    'circles-text',
    styleWrapper: true,
    styleText:    true
})
});

</script>