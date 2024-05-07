 <a data-toggle="modal" data-target="#addpackage">Add Package</a>
               <div id="addpackage" class="modal">
                   <div class="modal-dialog"> 
                       <div class="modal-content">
                           <div class="modal-header">
                               <h1 class="modal-title">Add new Package</h1>
                               <button class="close" type="button" data-dismiss="modal">&times;</button>
                           </div>
                           <div class="modal-body">
                               <form method="post" action="PackageAddServlet">
                                   <div class="form-group">
                                       <label>Package Id</label>
                                       <input type="text" name="gid" class="form-control"/>
                                   </div>
                                   <div class="form-group">
                                       <label>Package Name</label>
                                       <input type="text" name="gname" class="form-control"/>
                                   </div>
                                   <div class="form-group">
                                       <label>Package Detail</label>
                                       <input type="text" name="gdetail" class="form-control"/>
                                   </div>
                                   <div class="form-group">
                                       <label>Package Price</label>
                                       <input type="text" name="gprice" class="form-control"/>
                                   </div>
                                   <div class="form-group">
                                       <label>Package Quantity</label>
                                       <input type="text" name="gquantity" class="form-control"/>
                                   </div>
                                   <input type="submit" class="btn btn-success"/>
                               </form>
                           </div>
                           <div class="modal-footer"></div>  
                       </div>
                   </div>
                   
               </div>
