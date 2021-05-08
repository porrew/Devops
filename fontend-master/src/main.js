import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './assets/tailwind.css'
import Border from './components/Border.vue'
import Line from './components/Line.vue'


const app = createApp(App)
app.use(router)
app.component('bor-der', Border)
app.component('li-ne', Line)
app.mount('#app')
