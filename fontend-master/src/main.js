import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './assets/tailwind.css'
import Border from './components/Border.vue'

const app = createApp(App)
app.use(router)
app.component('bor-der', Border)
app.mount('#app')
