(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-center-center"],{"27ae":function(e,t,i){"use strict";i.r(t);var n=i("55b4"),r=i.n(n);for(var a in n)"default"!==a&&function(e){i.d(t,e,(function(){return n[e]}))}(a);t["default"]=r.a},"4f34":function(e,t,i){var n=i("24fb");t=n(!1),t.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.content[data-v-068c67cd]{height:calc(100vh - 94px);box-sizing:border-box}',""]),e.exports=t},"55b4":function(e,t,i){"use strict";var n=i("4ea4");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,i("96cf");var r=n(i("3b8d")),a=n(i("2971")),o={data:function(){return{isH5Plus:!0,user:{},tableName:"",role:"",menuList:[],iconArr:["cuIcon-same","cuIcon-deliver","cuIcon-evaluate","cuIcon-shop","cuIcon-ticket","cuIcon-cascades","cuIcon-discover","cuIcon-question","cuIcon-pic","cuIcon-filter","cuIcon-footprint","cuIcon-pulldown","cuIcon-pullup","cuIcon-moreandroid","cuIcon-refund","cuIcon-qrcode","cuIcon-remind","cuIcon-profile","cuIcon-home","cuIcon-message","cuIcon-link","cuIcon-lock","cuIcon-unlock","cuIcon-vip","cuIcon-weibo","cuIcon-activity","cuIcon-friendadd","cuIcon-friendfamous","cuIcon-friend","cuIcon-goods","cuIcon-selection"]}},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var e=(0,r.default)(regeneratorRuntime.mark((function e(){var t,i,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return this.role=uni.getStorageSync("role"),t=uni.getStorageSync("nowTable"),e.next=4,this.$api.session(t);case 4:i=e.sent,this.user=i.data,this.tableName=t,n=a.default.list(),this.menuList=n;case 9:case"end":return e.stop()}}),e,this)})));function t(){return e.apply(this,arguments)}return t}(),onShow:function(){var e=(0,r.default)(regeneratorRuntime.mark((function e(){var t,i,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return uni.removeStorageSync("useridTag"),this.role=uni.getStorageSync("role"),t=uni.getStorageSync("nowTable"),e.next=5,this.$api.session(t);case 5:i=e.sent,this.user=i.data,this.tableName=t,n=a.default.list(),this.menuList=n;case 10:case"end":return e.stop()}}),e,this)})));function t(){return e.apply(this,arguments)}return t}(),methods:{onPageTap:function(e){uni.setStorageSync("useridTag",1),uni.navigateTo({url:e,fail:function(){uni.switchTab({url:e})}})}}};t.default=o},"83ce":function(e,t,i){"use strict";var n=i("c17a"),r=i.n(n);r.a},c17a:function(e,t,i){var n=i("4f34");"string"===typeof n&&(n=[[e.i,n,""]]),n.locals&&(e.exports=n.locals);var r=i("4f06").default;r("50fdb99e",n,!0,{sourceMap:!1,shadowMode:!1})},d2c0:function(e,t,i){"use strict";i.r(t);var n=i("d76e"),r=i("27ae");for(var a in r)"default"!==a&&function(e){i.d(t,e,(function(){return r[e]}))}(a);i("83ce");var o,s=i("f0c5"),c=Object(s["a"])(r["default"],n["b"],n["c"],!1,null,"068c67cd",null,!1,n["a"],o);t["default"]=c.exports},d76e:function(e,t,i){"use strict";var n,r=function(){var e=this,t=e.$createElement,i=e._self._c||t;return i("v-uni-view",{staticClass:"content"},[i("v-uni-view",{style:{minHeight:"100vh",width:"100%",padding:"0 0 240rpx",position:"relative",background:"url(http://codegen.caihongy.cn/20221219/e2fba4798c544678b229915b312732b5.png) no-repeat center bottom / 100% auto,#f6f6f6",height:"auto"}},[i("v-uni-view",{staticClass:"header",class:{status:e.isH5Plus},style:{padding:"0 24rpx",boxShadow:"0px 0px 0px #eee",margin:"0 0 40rpx 0",background:"url(http://codegen.caihongy.cn/20221220/8fb6b4f30229439db2e15009b4e57f85.gif) no-repeat right center / 240rpx,url(http://codegen.caihongy.cn/20221220/8fb6b4f30229439db2e15009b4e57f85.gif) no-repeat left bottom / 240rpx,url(http://codegen.caihongy.cn/20221219/4d6a4e63542545c29d09fa1fffe85408.png) no-repeat center bottom,linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",height:"280rpx"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../user-info/user-info")}}},["yonghu"==e.tableName?i("v-uni-view",{staticClass:"userinfo",style:{width:"calc(100% - 112rpx)",alignItems:"center",display:"flex",height:"100%"}},[i("v-uni-image",{style:{width:"88rpx",padding:"0",margin:"0 20rpx 0 0",borderRadius:"100%",height:"88rpx"},attrs:{src:e.user.touxiang?e.baseUrl+e.user.touxiang:"/static/gen/upload.png"}}),i("v-uni-view",{staticClass:"info",style:{width:"100%",flex:"1",flexDirection:"column",justifyContent:"center",display:"flex",height:"100%"}},[i("v-uni-view",{style:{width:"100%",lineHeight:"36rpx",fontSize:"24rpx",color:"#333"}},[e._v(e._s(e.user.zhanghao)),e.user.vip&&"是"==e.user.vip?i("v-uni-text",[e._v("(VIP)")]):e._e()],1),e.user.money?i("v-uni-view",{style:{width:"100%",lineHeight:"36rpx",fontSize:"24rpx",color:"#333"}},[e._v("余额："+e._s(e.user.money))]):e._e(),e.user.jf||0==e.user.jf?i("v-uni-view",{style:{width:"100%",lineHeight:"36rpx",fontSize:"24rpx",color:"#333"}},[e._v("积分："+e._s(e.user.jf))]):e._e()],1)],1):e._e(),"yisheng"==e.tableName?i("v-uni-view",{staticClass:"userinfo",style:{width:"calc(100% - 112rpx)",alignItems:"center",display:"flex",height:"100%"}},[i("v-uni-image",{style:{width:"88rpx",padding:"0",margin:"0 20rpx 0 0",borderRadius:"100%",height:"88rpx"},attrs:{src:e.user.keshitupian?e.baseUrl+e.user.keshitupian:"/static/gen/upload.png"}}),i("v-uni-view",{staticClass:"info",style:{width:"100%",flex:"1",flexDirection:"column",justifyContent:"center",display:"flex",height:"100%"}},[i("v-uni-view",{style:{width:"100%",lineHeight:"36rpx",fontSize:"24rpx",color:"#333"}},[e._v(e._s(e.user.yishengbianhao)),e.user.vip&&"是"==e.user.vip?i("v-uni-text",[e._v("(VIP)")]):e._e()],1),e.user.money?i("v-uni-view",{style:{width:"100%",lineHeight:"36rpx",fontSize:"24rpx",color:"#333"}},[e._v("余额："+e._s(e.user.money))]):e._e(),e.user.jf||0==e.user.jf?i("v-uni-view",{style:{width:"100%",lineHeight:"36rpx",fontSize:"24rpx",color:"#333"}},[e._v("积分："+e._s(e.user.jf))]):e._e()],1)],1):e._e(),i("v-uni-view",{staticClass:"setting",style:{width:"112rpx",alignItems:"center",justifyContent:"center",display:"flex",height:"100%"}},[i("v-uni-view",{staticClass:"cuIcon-settings",style:{border:"0",width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#333",borderRadius:"0"}})],1)],1),i("v-uni-view",{staticClass:"list",style:{padding:"0 24rpx 160rpx",margin:"0 24rpx",flexWrap:"wrap",background:"none",display:"flex",width:"calc(100% - 48rpx)",height:"auto"}},[e._l(e.menuList,(function(t){return[e._l(t.backMenu,(function(n,r){return e.role==t.roleName?[e._l(n.child,(function(t,n){return["yifahuodingdan"!=t.tableName&&"yituikuandingdan"!=t.tableName&&"yiquxiaodingdan"!=t.tableName&&"weizhifudingdan"!=t.tableName&&"yizhifudingdan"!=t.tableName&&"yiwanchengdingdan"!=t.tableName&&"exampaper"!=t.tableName&&"examquestion"!=t.tableName?i("v-uni-view",{key:n+"_0",staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(i){arguments[0]=i=e.$handleEvent(i),e.onPageTap("../"+t.tableName+"/list?userid="+e.user.id)}}},[i("v-uni-view",{class:t.appFrontIcon,style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v(e._s(t.menu))]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1):e._e()]}))]:e._e()}))]})),i("v-uni-view",{staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../shop-recharge/pay-confirm")}}},[i("v-uni-view",{staticClass:"cuIcon-moneybag",style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v("用户充值")]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1),i("v-uni-view",{staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../chat/chat")}}},[i("v-uni-view",{staticClass:"cuIcon-service",style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v("商城客服")]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1),i("v-uni-view",{staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../forum-add-or-update/forum-add-or-update")}}},[i("v-uni-view",{staticClass:"cuIcon-scan",style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v("我要发贴")]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1),i("v-uni-view",{staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../forum-my/forum-my")}}},[i("v-uni-view",{staticClass:"cuIcon-scan",style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v("我的发贴")]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1),i("v-uni-view",{staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../shop-cart/shop-cart")}}},[i("v-uni-view",{staticClass:"cuIcon-cart",style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v("购物车")]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1),i("v-uni-view",{staticClass:"li",style:{padding:"0 20rpx",borderColor:"#ccc",margin:"0 0 20rpx",alignItems:"center",borderRadius:"16rpx",borderWidth:"0px 0 0",background:"linear-gradient(180deg, rgba(246,246,246,1) 0%, rgba(103,197,254,1) 80%, rgba(6,159,250,1) 100%),#069ffa",display:"flex",width:"100%",lineHeight:"80rpx",borderStyle:"dashed",height:"auto"},attrs:{"hover-class":"hover"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onPageTap("../shop-order/shop-order")}}},[i("v-uni-view",{staticClass:"cuIcon-order",style:{width:"64rpx",lineHeight:"64rpx",fontSize:"64rpx",color:"#069ffa"}}),i("v-uni-view",{staticClass:"text",style:{width:"100%",padding:"0 20rpx",lineHeight:"88rpx",fontSize:"28rpx",color:"#333",flex:"1"}},[e._v("我的订单")]),i("v-uni-view",{staticClass:"cuIcon-right",style:{width:"28rpx",lineHeight:"28rpx",fontSize:"28rpx",color:"#333"}})],1)],2)],1)],1)},a=[];i.d(t,"b",(function(){return r})),i.d(t,"c",(function(){return a})),i.d(t,"a",(function(){return n}))}}]);