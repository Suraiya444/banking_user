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
  import DataService from "../services/DataService"; // Import Axios for HTTP requests
  
  export default {
    data() {
        console.log(JSON.parse(sessionStorage.getItem('udata')));
      return {
        user: JSON.parse(sessionStorage.getItem('udata')),
        // Form data object to bind with the form inputs
        form: {
          trans_type: '',
          amount: '',
          trans_date: ''
        }
      };
    },
    methods: {
      // Handle form submission
      async submitForm() {
        try {
            const customerData = await DataService.customer(); // Replace with actual API if needed
            this.form.customer_id = customerData.id; 
          // Send the form data to the backend via a POST request
          const response = await DataService.customerTransaction(this.form);  // Pass the form data here
          
          // Handle the response after successful submission
          console.log('Transaction saved:', response.data);
  
          // Optionally, reset the form or provide a success message
          this.resetForm();
        } catch (error) {
          // Handle error (e.g., display an error message)
          console.error('Error saving transaction:', error);
        }
      },
  
      // Reset the form after submission
      resetForm() {
        this.form.trans_type = '';
        this.form.amount = '';
        this.form.trans_date = '';
      }
    }
  };
  </script>
  
  <style scoped>
  /* Add custom styles if needed */
  </style>
  