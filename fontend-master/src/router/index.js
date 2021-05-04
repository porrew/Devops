import { createRouter, createWebHistory } from 'vue-router'
import Product from '../views/Product.vue'
import Team from '../views/Team.vue'
import NotFound from '../views/NotFound.vue'
import AddEdit from '../views/AddEdit.vue'

const routes = [
  {
    path: '/',
    name: 'Product',
    component: Product
  },
  {
    path: '/team',
    name: 'Team',    
    component: Team
  },
  {
    path: '/addedit',
    name: 'AddEdit',    
    component: AddEdit
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
