import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import discussyisheng from '@/views/modules/discussyisheng/list'
    import keshimingcheng from '@/views/modules/keshimingcheng/list'
    import jiankangtixing from '@/views/modules/jiankangtixing/list'
    import yaopinxinxi from '@/views/modules/yaopinxinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import qixiexinxi from '@/views/modules/qixiexinxi/list'
    import forum from '@/views/modules/forum/list'
    import tijiandangan from '@/views/modules/tijiandangan/list'
    import yuyueguahao from '@/views/modules/yuyueguahao/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import jianyanxinxi from '@/views/modules/jianyanxinxi/list'
    import orders from '@/views/modules/orders/list'
    import discussyaopinxinxi from '@/views/modules/discussyaopinxinxi/list'
    import yisheng from '@/views/modules/yisheng/list'
    import jiuzhenjilu from '@/views/modules/jiuzhenjilu/list'
    import config from '@/views/modules/config/list'
    import discussqixiexinxi from '@/views/modules/discussqixiexinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '医疗资讯',
        component: news
      }
      ,{
	path: '/discussyisheng',
        name: '医生评论',
        component: discussyisheng
      }
      ,{
	path: '/keshimingcheng',
        name: '科室名称',
        component: keshimingcheng
      }
      ,{
	path: '/jiankangtixing',
        name: '健康提醒',
        component: jiankangtixing
      }
      ,{
	path: '/yaopinxinxi',
        name: '药品信息',
        component: yaopinxinxi
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/qixiexinxi',
        name: '器械信息',
        component: qixiexinxi
      }
      ,{
	path: '/forum',
        name: '论坛交流',
        component: forum
      }
      ,{
	path: '/tijiandangan',
        name: '体检档案',
        component: tijiandangan
      }
      ,{
	path: '/yuyueguahao',
        name: '预约挂号',
        component: yuyueguahao
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/chat',
        name: '商城客服',
        component: chat
      }
      ,{
	path: '/jianyanxinxi',
        name: '检验信息',
        component: jianyanxinxi
      }
      ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
      ,{
	path: '/discussyaopinxinxi',
        name: '药品信息评论',
        component: discussyaopinxinxi
      }
      ,{
	path: '/yisheng',
        name: '医生',
        component: yisheng
      }
      ,{
	path: '/jiuzhenjilu',
        name: '就诊记录',
        component: jiuzhenjilu
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/discussqixiexinxi',
        name: '器械信息评论',
        component: discussqixiexinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
