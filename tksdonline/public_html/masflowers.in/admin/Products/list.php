 <?php 
    if($_GET['status']=="All"){ 
        $products = $mysql->select("select * from _tbl_sales_products order by ProductID Desc");
        $title="All Products";
    }if($_GET['status']=="Active"){
        $products = $mysql->select("select * from _tbl_sales_products where IsPublish='1' order by ProductID Desc");
        $title="Active Products";
    }if($_GET['status']=="Disable"){
        $products = $mysql->select("select * from _tbl_sales_products where IsPublish='0' order by ProductID Desc");
        $title="Disable Products";
    }if($_GET['status']=="Unsold"){
        $products = $mysql->select("SELECT * FROM _tbl_sales_products WHERE NOT EXISTS (SELECT * FROM invoice_order_item WHERE _tbl_sales_products.ProductID = invoice_order_item.order_id)  order by ProductID Desc");
        $title="Unsold Products";
    }
    if($_GET['status']=="Mostsold"){
        $products = $mysql->select("SELECT * FROM _tbl_sales_products WHERE (SELECT  order_id,  COUNT (*) FROM invoice_order_item GROUP BY order_id)  order by ProductID Desc");
        $title="Mostsold Products";
    }
?>
<div class="main-panel">                                                                                                                                                                      
    <div class="container">
        <div class="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" style="padding-top:10px;padding-bottom:10px">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card-title">
                                        Manage Products
                                    <br>
                                    <span style="font-size: 15px"><?php echo $title;?></span>  </div>
                                </div>
                                <div class="col-md-8" style="text-align: right;">
                                    <a href="dashboard.php?action=Products/add" class="btn btn-primary btn-xs">Add Product</a><br>
                                    <a href="dashboard.php?action=Products/list&status=All" <?php if($_GET['status']=="All"){ ?> style="font-size:bold;text-decoration:underline;"<?php } ?>>All Products</a>&nbsp;|&nbsp;
                                    <a href="dashboard.php?action=Products/list&status=Active" <?php if($_GET['status']=="Active"){ ?> style="font-size:bold;text-decoration:underline;"<?php } ?>>Active Products</a>&nbsp;|&nbsp;
                                    <a href="dashboard.php?action=Products/list&status=Unsold" <?php if($_GET['status']=="Unsold"){ ?> style="font-size:bold;text-decoration:underline;"<?php } ?>>Unsold Products</a>&nbsp;|&nbsp;
                                    <a href="dashboard.php?action=Products/list&status=Mostsold" <?php if($_GET['status']=="Mostsold"){ ?> style="font-size:bold;text-decoration:underline;"<?php } ?>>Most Selling Products</a>&nbsp;|&nbsp;
                                    <a href="dashboard.php?action=Products/list&status=Disable" <?php if($_GET['status']=="Disable"){ ?> style="font-size:bold;text-decoration:underline;"<?php } ?>>Disable Products</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">                                                                                                                                             
                            <div class="table-responsive">
                                 <table class="table table-striped mt-3">
                                        <thead>
                                            <tr>
                                                <th scope="col">Product Code</th>
                                                <th scope="col">Product Name</th>
                                                <th scope="col">Unit of Measurment</th>
                                                <th scope="col" style="text-align: right;">Price (Rs)</th>                                   
                                                <th scope="col"> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <?php foreach($products as $product){ ?>
                                            <tr>
                                                <td><?php echo $product['ProductCode'];?></td>
                                                <td><?php echo $product['ProductNameTamil'];?><br><?php echo $product['ProductName'];?></td>
                                                <td><?php echo $product['ProductUnitName'];?></td>                                               
                                                <td style="text-align:right"><?php echo number_format($product['ProductPrice'],2);?></td>
                                                <td style="text-align: right">                                                   
                                                        <div class="dropdown dropdown-kanban" style="float: right;">
                                                            <button class="" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none;font-size:14px;background:none !important;padding-right:0px;margin-right:0px;cursor:pointer">
                                                                <i class="icon-options-vertical"></i>
                                                            </button>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="dashboard.php?action=Products/edit&id=<?php echo md5($product['ProductID']);?>" draggable="false">Edit</a>
                                                                <a class="dropdown-item" href="dashboard.php?action=Products/view&id=<?php echo md5($product['ProductID']);?>" draggable="false">View</a>
                                                                <a class="dropdown-item" draggable="false"><span onclick='CallConfirmation(<?php echo $product['ProductID'];?>)' class='btn btn-danger btn-sm' style='padding: 0px 10px;font-size: 10px;'>Delete</span></a>
                                                            </div>
                                                        </div>
                                                    </td>
                                            </tr>
                                        <?php } if(sizeof($products)=="0"){ ?>
                                            <tr>
                                                <td style="text-align: center;" colspan="4">No Products found</td>
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
  <div class="modal fade" id="ConfirmationPopup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body" id="confrimation_text" style="padding:10px;">
         
         <div id="xconfrimation_text" style="text-align: center;font-size:15px;"></div>  
      </div>
    </div>
  </div>
</div>
<script>
   var loading = "<div style='padding:80px;text-align:center;color:#aaa'><img src='http://japps.online/tour/admin/assets/loading.gif'  style='width:80px'><br>Processing ...</div>";
 
 function CallConfirmation(ProductID){
    var txt = '<form action="" method="POST" id="ProductFrm_'+ProductID+'">'
                    +'<input type="hidden" value="'+ProductID+'" id="ProductID" Name="ProductID">'
                    +'<div class="form-group row">'
                    +'<div class="col-sm-12" style="text-align:center">'
                        +'CONFIRMATION'
                    +'</div>'
               +'</div>'
               +'<div class="form-group row">'
                    +'<div class="col-sm-12" style="text-align:left">'
                    +'Are you sure want to delete product?'
                    +'</div>'
                +'</div>'
                +'<div style="padding:20px;text-align:center">'
                    +'<button type="button" class="btn btn-outline-success" data-dismiss="modal" >Cancel</button>&nbsp;&nbsp;&nbsp;'
                    +'<button type="button" class="btn btn-success" onclick="DeleteProduct(\''+ProductID+'\')" >Yes, Confirm</button>'
                 +'</div></form>';  
        $('#xconfrimation_text').html(txt);                                       
        $('#ConfirmationPopup').modal("show");
}                                                                                                 
 
 function DeleteProduct(productid) {
     var param = $( "#ProductFrm_"+productid).serialize();
    $("#confrimation_text").html(loading);
    $.post( "http://masflowers.in/admin/webservice.php?action=DeleteProduct",param,function(data) {
        var obj = JSON.parse(data); 
        var html = "";                                                                                         
        if (obj.status=="failure") {
            html = "<div class='form-group row'><div class='col-sm-12' style='text-align:center'><img src='http://japps.online/tour/admin/assets/accessdenied.png' style='width:128px'><br><br>"+obj.message+"<br></div></div>";
            html += "<div style='padding:20px;text-align:center'>" + "<button type='button' class='btn btn-outline-success' data-dismiss='modal'>Cancel</button></div>"; 
        }if (obj.status=="Success") {
            html = "<div class='form-group row'><div class='col-sm-12' style='text-align:center'><img src='http://japps.online/tour/admin/assets/tick.jpg' style='width:128px'><br><br>"+obj.message+"<br></div></div>";
            html += "<div style='padding:20px;text-align:center'>" + "<a href='dashboard.php?action=Products/list' class='btn btn-outline-success'>Continue</a></div>"; 
        }
        $('#ConfirmationPopup').modal("show");
        $("#confrimation_text").html(html);
        
    });
}
</script>
