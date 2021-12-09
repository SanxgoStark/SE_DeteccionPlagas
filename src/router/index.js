import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/aspecto',
    name: 'Aspecto',
    props: true,
    component: () => import(/* webpackChunkName: "about" */ '../views/AspectoView.vue')
  },
  {
    path: '/solucion',
    name: 'Solucion',
    props: true,
    component: () => import(/* webpackChunkName: "about" */ '../views/SolucionView.vue')
  },
]

const router = new VueRouter({
  routes
})

export default router
