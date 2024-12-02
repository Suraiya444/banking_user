<template>
      <div  class="single-pro-review-area mt-t-30 mg-b-15">
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
                                            <p><b>Name</b><br />{{ user.name }}</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Gender</b><br />{{user.gender}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>Email ID</b><br /> {{user.email}}</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Phone</b><br />{{user.contact_no}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="address-hr">
                                            <p><b>Address</b><br />{{user.pre_address }}</p>
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
                                                <h1>{{user.name}}'s<span class="table-project-n"> Account Details</span></h1>
                                            </div>
                                        </div>
                                        <div class="sparkline13-graph">
                                            <div class="datatable-dashv1-list custom-datatable-overright">
                                                 
                                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                    data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                    <thead>
                                                        <tr>
                                                            
                                                            <th data-field="id">ID</th>
                                                            <th data-field="email" data-editable="true">Ac Number</th>
                                                            <th data-field="phone" data-editable="true">Balance</th>
                                                            <th data-field="complete">Transaction Type</th>
                                                            <th data-field="task" data-editable="true">Transaction Date</th>                                                          
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="t in transaction" :key="t.id"> 
                                                            <td>1</td>
                                                            <td> {{ t.customer_account?.account_no }}</td>
                                                            <td> {{ t.amount }}</td>
                                                            <td> {{ t.trans_type }}</td>
                                                            <td> {{ t.trans_date }}</td>
                                                            <!-- <td>{{ customeraccount.customer_account?.account_no }}</td>
                                                            <td class="datatable-ct"><span class="pie">{{ customeraccount.customer_account?.account_no }}</span>
                                                            </td>
                                                            <td>{{ customeraccount.customer_account?.account_no }}</td>
                                                            <td>{{ customeraccount.customer_account?.account_no }}</td> -->
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
import DataService from "../services/DataService";
// import router from '@/router';

export default {
    name: 'Home',
    data() {
        console.log(JSON.parse(sessionStorage.getItem('udata')));
        return {
            user: JSON.parse(sessionStorage.getItem('udata')),
            transaction:[],
            
        };
    },

    mounted() {
    this.customerTransactionDetails();     
  },
     
    methods: {
        async customerTransactionDetails() {
    try {      
      const user_id = this.user ? this.user.id : null;     
      if (!user_id) {
        console.error("No user ID found.");
        return;  
      }    
      const response = await DataService.transaction(user_id);  
      const data = response.data.data;  

      if (data) {
        this.transaction = data; // Store the customer account data in the component state
        console.log("Customer Transaction Data:", data);
      } else {
        console.error('Failed to load customer account data');
      }
    } catch (error) {
      console.error("Error fetching customer account:", error);
    }
  }

    }
  
    
};
</script>
 

 