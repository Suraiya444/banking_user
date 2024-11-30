<template>
      <div v-if="customer" class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="profile-info-inner">
                            <div class="profile-img">
                                <img src="/assets/img/profile/1.jpg" alt="" />
                            </div>
                            <div class="profile-details-hr">
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>{{customer.name }}</b><br /></p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Account</b><br /> Head of Dept.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>Email ID</b><br /> fly@gmail.com</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Phone</b><br /> +01962067309</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="address-hr">
                                            <p><b>Address</b><br /> E104, catn-2, Chandlodia Ahmedabad Gujarat, UK.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="address-hr">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <h3>500</h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="address-hr">
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <h3>900</h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="address-hr">
                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                            <h3>600</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="sparkline13-list">
                                        <div class="sparkline13-hd">
                                            <div class="main-sparkline13-hd">
                                                <h1>Customer<span class="table-project-n">Data</span></h1>
                                            </div>
                                        </div>
                                        <div class="sparkline13-graph">
                                            <div class="datatable-dashv1-list custom-datatable-overright">
                                                 
                                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                    data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                    <thead>
                                                        <tr>
                                                            
                                                            <th data-field="id">ID</th>
                                                            <th data-field="name" data-editable="true">Name</th>
                                                            <th data-field="email" data-editable="true">Ac Number</th>
                                                            <th data-field="phone" data-editable="true">Balance</th>
                                                            <th data-field="complete">Transfer</th>
                                                            <th data-field="task" data-editable="true">Deposit</th>
                                                            <th data-field="date" data-editable="true">Withdraw</th>
                                                             
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr> 
                                                            <td>1</td>
                                                            <td>Web Development</td>
                                                            <td>admin@uttara.com</td>
                                                            <td>+8801962067309</td>
                                                            <td class="datatable-ct"><span class="pie">1/6</span>
                                                            </td>
                                                            <td>10%</td>
                                                            <td>Jul 14, 2017</td>
                                                             
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>2</td>
                                                            <td>Graphic Design</td>
                                                            <td>fox@itpark.com</td>
                                                            <td>+8801762067304</td>
                                                            <td class="datatable-ct"><span class="pie">230/360</span>
                                                            </td>
                                                            <td>70%</td>
                                                            
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>3</td>
                                                            <td>Software Development</td>
                                                            <td>gumre@hash.com</td>
                                                            <td>+8801862067308</td>
                                                            <td class="datatable-ct"><span class="pie">0.42/1.461</span>
                                                            </td>
                                                            <td>5%</td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td>4</td>
                                                            <td>Woocommerce</td>
                                                            <td>kyum@frok.com</td>
                                                            <td>+8801962066547</td>
                                                            <td class="datatable-ct"><span class="pie">2,7</span>
                                                            </td>
                                                            <td>15%</td>
                                                            
                                                        </tr>
                                                        
                                                        
                                                      
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
            </div>
        </div>
</template>
<script>
export default {
  name: 'Home',
  data(){
    return{
        customer: JSON.parse(sessionStorage.getItem('customer'))||null,
    };
  },
//   methods:{
//     editProfile(){
//         this.$router.push('/customer');
//     },
//   },

//   props: {
//     msg: String
//   }
};
</script>
 

 