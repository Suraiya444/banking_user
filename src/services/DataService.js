import http from "../http-common";

class DataService {
  login(data) {
    return http.post("/customer/login/", data);
  }
  customer(id) {
    return http.get(`/customer/${id}`);
  }
  accountType(id) {
    return http.get(`/account_type/${id}`);
  }
  ustomerAccount(id) {
    return http.get(`/customer_account/${id}`);   
  }
  transaction(user_id) {
    return http.get(`/customer_transaction?customer_id=${user_id}`);
  }
  customerTransaction( customer_id) {
    return http.post(`/customer_transaction`,customer_id);
  }
 
  // orders(uid) {
  //   return http.get(`/orders/${uid}`);
  // }
  // ordertrack(uid) {
  //   return http.get(`/ordertrack/${uid}`);
  // }
  // ordertrack_save(data) {
  //   return http.post("/ordertrack_save", data);
  // }
  // doctor(dept) {
  //   return http.get(`/doctor/${dept}`);
  // }
  // getAll(uid) {
  //   return http.get(`/booking/${uid}`);
  // }

  // get(id) {
  //   return http.get(`/booking_single/${id}`);
  // }
  // student_details(id) {
  //   return http.get(`/student_details/${id}`);
  // }

  // login(data) {
  //   return http.post("/student_login", data);
  // }

  // update(id, data) {
  //   return http.put(`/tutorials/${id}`, data);
  // }

  // delete(id) {
  //   return http.delete(`/tutorials/${id}`);
  // }



  // findByTitle(title) {
  //   return http.get(`/tutorials?title=${title}`);
  // }
}

export default new DataService();