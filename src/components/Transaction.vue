<template>
    <div class="single-pro-review-area mt-t-30 mg-b-15">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="product-payment-inner-st">
              <ul id="myTabedu1" class="tab-review-design">
                <li class="active"><a href="#description">{{user.name}}'s Transaction</a></li>
              </ul>
              <div id="myTabContent" class="tab-content custom-product-edit">
                <div class="product-tab-list tab-pane fade active in" id="description">
                  <form @submit.prevent="submitForm">
                    <div>
                      <label for="trans_type">Transaction Type:</label>
                      <select v-model="form.trans_type" id="trans_type">
                        <option value="1">Deposit</option>
                        <option value="2">Withdraw</option>
                        <option value="3">Transfer In</option>
                        <option value="4">Transfer Out</option>
                      </select>
                    </div>
                    <div>
                      <label for="amount">Amount:</label>
                      <input type="number" v-model="form.amount" id="amount" required />
                    </div>
                    <div>
                      <label for="trans_date">Transaction Date:</label>
                      <input type="date" v-model="form.trans_date" id="trans_date" required />
                    </div>
                    <div>
                      <label for="trans_date">Description</label>
                      <input type="text" v-model="form.description" id="description" required />
                    </div>
                    <button type="submit">Submit</button>
                  </form>
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
  export default {
  data() {
    
    const userData = JSON.parse(sessionStorage.getItem('udata'));

    return {
      user: userData,
      form: {
        trans_type: '',
        amount: '',
        trans_date: '',
        description: '',
        customer_id: userData ? userData.id : '',            
        customer_account_id: userData ? userData.customer_account_id : '',   
      }
    };
  },

    methods: {
       
      async submitForm() {
        try {
                    
           const response = await DataService.customerTransaction(this.form);             
          console.log('Transaction saved:', response.data);
          this.resetForm();
        } catch (error) {
           
          console.error('Error saving transaction:', error);
        }
      },
      resetForm() {
        this.form.trans_type = '';
        this.form.amount = '';
        this.form.trans_date = '';
      }
    }
  };
  </script>
  
  <style scoped>
  
  </style>
  