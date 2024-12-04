 <!-- src/components/Login.vue -->
 <template>
  <div class="half-radius-corner">
      <div class="auth-container">
      <h2>Login</h2>
      <form  method="post">
          <div class="input-group">
          <input v-model="formData.email" type="text" placeholder="email" required />
          </div>
          <div class="input-group">
            <input type="password" v-model="formData.password" placeholder="Enter your password">
          </div>
          <button type="button" @click="login">Login</button>
      </form>
      <p>Don't have an account? <router-link to="/register">Register here</router-link></p>
      </div>
  </div>
</template>

<script>

// import DataService from "../services/DataService";
// import router from "@/router";  // Ensure router is imported

// export default {
//   name: "login",
//   data() {
//     return {
//       formData: {
//         email: "",
//         password: "",
//       },
//     };
//   },
//   methods: {
//     async login() {
//       const data = {
//         email: this.formData.email,
//         password: this.formData.password
//       };

//       try {
//         const response = await DataService.login(data);  // Call login API

//         // Check if the response contains data
//         if (response.data && response.data.data) {
//           const userData = response.data.data;
//           const customerAccountId = response.data.customer_account_id;
          
          
//           // Store the token and customer data (including customer_account_id) in sessionStorage
//           sessionStorage.setItem('uid', userData.token);  // Store the user token
          
          
//           sessionStorage.setItem('udata', JSON.stringify({
//             ...userData,  // Spread the user data
//             customer_account_id: customerAccountId // Add the customer_account_id
//           }));

//           // Log success and redirect to home or another page
//           console.log("Login successful");
//           router.push({ name: 'Home' });  // Or redirect to the desired route
//         } else {
//           console.error('Login failed: Invalid response data');
//           alert('Login failed: Invalid credentials or server error');
//         }
//       } catch (error) {
//         // Catch any errors during login
//         console.error('Error during login:', error);
//         alert('An error occurred during login. Please try again.');
//       }
//     }
//   }
// };



  import DataService from "../services/DataService";
  import router from '@/router';
  export default {
      name: "login",
      data() {
        return {
          formData: {
            email: "",
            password: "",
          },
        };
      },
      methods: {
        login() {
          var data = {
            email: this.formData.email,
            password: this.formData.password
          };
          DataService.login(data)
          .then(response => {
            console.log(response.data.data.data)
            if(response.data.data.token){
              sessionStorage.setItem('uid', response.data.data.token);
              sessionStorage.setItem('udata', JSON.stringify(response.data.data.data));
            }else
              alert(response.data.error)
              
              router.push({ name: 'Home' });
              window.location.href='/home';
          })
          .catch(e => {
            console.log(e);
          });
        }
      },
    }

      // methods: {
//   async login() {
    
//     try {
//       const response = await DataService.login(this.formData); // Assuming form contains email/password

//       if (response.data && response.data.data) {
//         // Assuming the backend sends back customer data and customer_account_id
//         const userData = response.data.data;
//         console.log( response.data.data);
//         const customerAccountId = response.data.customer_account_id;
       
        
//         // Store the customer data and customer_account_id in sessionStorage
//         sessionStorage.setItem('udata', JSON.stringify({
//           ...userData,
//           customer_account_id: customerAccountId // Automatically add the customer_account_id here
//         }));

//         // Redirect or take other actions after successful login
//         console.log("Login successful");
//         // this.$router.push('/home'); // Or any page you want to navigate to
//       } else {
//         console.error('Login failed');
//       }
//     } catch (error) {
//       console.error('Error during login:', error);
//     }
//   }
// }

//   };

     
  </script>
  
  <style scoped>
   .auth-container {
    width: 500px;
    margin: 150px  ;
    margin-left: 400px;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 20px;
    border: 4px solid  #4EA685; 
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease; 
  }
  .auth-container:hover {  
    border: 6px #4EA685;  /* Thicker orange border on hover */
}
  input {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    margin-left: 80px;
    border-radius: 4px;
    border: 1px solid #ccc;
  }
  button {
    width: 20%;
    padding: 10px;
    background-color: #4EA685;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-left: 160px;
  }
  button:hover {
    background-color: #57B894;
  }
  h2{
    margin-top: 50px;
    margin-left: 180px;
  }
  p{
    margin-top: 50px;
    margin-left: 80px;
  }
  .half-radius-corner {
    position: absolute;
    top: 0;
    left: 0;  /* Position it on the left side */
    width: 50vw;  /* Half of the page width */
    height: 50vh; /* Half of the page height */
    background-color: #4EA685;  /* Green color */
    border-radius: 40% 0 70% 0;  /* Makes the bottom-left corner a half-circle */
    z-index: 1;  /* Ensure it appears above the content */
}
  </style>
  