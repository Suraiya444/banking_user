import { createWebHistory,createRouter } from "vue-router";

const routes =  [
    {
      path: "/home",
      alias: "/home",
      name: "Home",
      component: () => import("./components/Home")
    },
    {
      path: "/deposit",
      alias: "/deposit",
      name: "deposit",
      component: () => import("./components/Deposit")
    },
    {
      path: "/login",
      alias: "/login",
      name: "login",
      meta: {
        NoHeader: true,
        NoFooter: true
    },
      component: () => import("./components/Login")
    },
    {
      path: "/register",
      alias: "/register",
      name: "register",
      meta: {
        NoHeader: true,
        NoFooter: true
    },
      component: () => import("./components/Register")
    },
];

    const router = createRouter({
        history: createWebHistory(),
        routes,
      });
      
      export default router;