 <!-- src/components/Login.vue -->
<template>
        <div class="half-radius-corner">
            <div class="auth-container">
            <h2>Login</h2>
            <form @submit.prevent="submitLogin">
                <div class="input-group">
                <input v-model="username" type="text" placeholder="Username" required />
                </div>
                <div class="input-group">
                <input v-model="password" type="password" placeholder="Password" required />
                </div>
                <button type="submit">Login</button>
            </form>
            <p>Don't have an account? <router-link to="/register">Register here</router-link></p>
            </div>
        </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        username: '',
        password: '',
      };
    },
    methods: {
      submitLogin() {
        // Handle login logic (e.g., API request)
        console.log('Login attempt:', this.username, this.password);
        // Redirect or show success message
        this.$router.push('/home'); // Example of redirecting after login
      },
    },
  };
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
    border-radius: 0 0 50% 0;  /* Makes the bottom-left corner a half-circle */
    z-index: 1;  /* Ensure it appears above the content */
}
  </style>
  