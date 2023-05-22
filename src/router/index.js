import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'landing-page',
      component: () => import('../views/Guest/LandingPage.vue')
    },
    {
      path: '/admin-dashboard',
      name: 'admin-dashboard',
      component: () => import('../views/Admin/Templates/AdminDashboard.vue'),
    }
  ]
})

export default router
