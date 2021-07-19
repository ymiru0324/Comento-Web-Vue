// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import './plugins/axios'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'
import '@/styles/index.scss' // global css
import 'element-theme-default'

Vue.config.productionTip = false
Vue.use(ElementUI)
// eslint-disable-next-line
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
