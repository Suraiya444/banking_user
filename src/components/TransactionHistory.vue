<template>
    <div class="single-pro-review-area mt-t-30 mg-b-15">
        <div class="product-status mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap drp-lst">
                            <h4>Transaction History List</h4>
                            <div class="add-product">
                                <a href="add-department.html">Add Departments</a>
                            </div>
                            <div class="asset-inner">
                                <table>
                                    <tr>
                                        <th>Date</th>
                                        <th>Name.</th>
                                        <th>Account No</th>                                      
                                        <th>Deposit</th>
                                        <th>Withdraw</th>
                                        <th>Balance</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Kamal</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>                                                                    
                                        <td>1500</td>
                                        <td>00</td>
                                        <td>1500</td>
                                        <td>
                                            <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Kamal</td>
                                        <td>
                                            <button class="pd-setting">Active</button>
                                        </td>                                                                    
                                        <td>00</td>
                                        <td>1000</td>
                                        <td>500</td>
                                        <td>
                                            <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </td>
                                    </tr>
                                    
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</template>

<script>
export default {
  name: 'TransactionHistory',
  props: {
    msg: String
  }
}
</script>