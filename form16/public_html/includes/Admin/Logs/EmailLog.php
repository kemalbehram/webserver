<?php 
       $sql= $mysql->select("select * from `_tbl_logs_email` order by `EmailLogID` desc ");
?>
<div class="main-panel">
    <div class="container">
        <div class="page-inner">
            <div class="form-group row">
                <div class="col-sm-6"><h4 class="page-title">Email Logs</h4></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                Email Logs
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Email To</th>
                                            <th>Subject</th>   
                                            <th>Status</th>
                                            <th>Attachment</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php  foreach($sql as $log){ ?>
                                        <tr>
                                            <td><?php echo date("d M, Y H:i",strtotime($log['EmailRequestedOn']));?></td>
                                            <td><?php echo $log['EmailTo'];?></td>
                                            <td><?php echo $log['EmailSubject'];?></td>
                                            <td><?php if($log['IsSuccess']==1) { echo "Success"; } else { echo "Failure"; }?></td>
                                            <td><?php if($log['IsAttachment']==1) { echo "attached"; 
                                            ?>
                                               <a href="<?php echo $log['AttachmentFile'];?>"><i class="fas fa-cloud-download-alt"></i></a>
                                               <?php
                                            }  ?></td>
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
<script>$(document).ready(function() {$('#myTable').DataTable({ "order": [[ 1, "desc" ]]});});</script>