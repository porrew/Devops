import { createRouter, createWebHistory } from 'vue-router'
import About from '../views/About.vue'
import Team from '../views/Team.vue'
import NotFound from '../views/NotFound.vue'
import Product from '../views/Product.vue'

const routes = [
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/team',
    name: 'Team',    
    component: Team
  },
  {
    path: '/',
    name: 'Product',    
    component: Product
  },
  {
    path: '/:catchNotMatchPath(.*)',
    name: 'NotFound',
    component: NotFound
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
