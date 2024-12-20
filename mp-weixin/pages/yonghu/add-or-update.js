(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/yonghu/add-or-update"],{"04b3":function(e,t,n){"use strict";n.r(t);var r=n("31d5"),i=n.n(r);for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);t["default"]=i.a},"31d5":function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=i(n("a34a"));function i(e){return e&&e.__esModule?e:{default:e}}function a(e,t,n,r,i,a,u){try{var s=e[a](u),o=s.value}catch(c){return void n(c)}s.done?t(o):Promise.resolve(o).then(r,i)}function u(e){return function(){var t=this,n=arguments;return new Promise((function(r,i){var u=e.apply(t,n);function s(e){a(u,r,i,s,o,"next",e)}function o(e){a(u,r,i,s,o,"throw",e)}s(void 0)}))}}var s=function(){return Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(n.bind(null,"e2b1"))},o=function(){return n.e("components/xia-editor/xia-editor").then(n.bind(null,"064f"))},c={data:function(){return{cross:"",ruleForm:{zhanghao:"",mima:"",xingming:"",xingbie:"",shouji:"",shenfenzheng:"",touxiang:"",money:""},xingbieOptions:[],xingbieIndex:0,user:{},ro:{zhanghao:!1,mima:!1,xingming:!1,xingbie:!1,shouji:!1,shenfenzheng:!1,touxiang:!1,money:!1}}},components:{wPicker:s,xiaEditor:o},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var t=u(r.default.mark((function t(n){var i,a,u,s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return i=e.getStorageSync("nowTable"),t.next=3,this.$api.session(i);case 3:if(a=t.sent,this.user=a.data,this.xingbieOptions="男,女".split(","),this.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(this.ruleForm.refid=n.refid,this.ruleForm.nickname=e.getStorageSync("nickname")),!n.id){t.next=14;break}return this.ruleForm.id=n.id,t.next=12,this.$api.info("yonghu",this.ruleForm.id);case 12:a=t.sent,this.ruleForm=a.data;case 14:if(this.cross=n.cross,!n.cross){t.next=54;break}u=e.getStorageSync("crossObj"),t.t0=r.default.keys(u);case 18:if((t.t1=t.t0()).done){t.next=54;break}if(s=t.t1.value,"zhanghao"!=s){t.next=24;break}return this.ruleForm.zhanghao=u[s],this.ro.zhanghao=!0,t.abrupt("continue",18);case 24:if("mima"!=s){t.next=28;break}return this.ruleForm.mima=u[s],this.ro.mima=!0,t.abrupt("continue",18);case 28:if("xingming"!=s){t.next=32;break}return this.ruleForm.xingming=u[s],this.ro.xingming=!0,t.abrupt("continue",18);case 32:if("xingbie"!=s){t.next=36;break}return this.ruleForm.xingbie=u[s],this.ro.xingbie=!0,t.abrupt("continue",18);case 36:if("shouji"!=s){t.next=40;break}return this.ruleForm.shouji=u[s],this.ro.shouji=!0,t.abrupt("continue",18);case 40:if("shenfenzheng"!=s){t.next=44;break}return this.ruleForm.shenfenzheng=u[s],this.ro.shenfenzheng=!0,t.abrupt("continue",18);case 44:if("touxiang"!=s){t.next=48;break}return this.ruleForm.touxiang=u[s].split(",")[0],this.ro.touxiang=!0,t.abrupt("continue",18);case 48:if("money"!=s){t.next=52;break}return this.ruleForm.money=u[s],this.ro.money=!0,t.abrupt("continue",18);case 52:t.next=18;break;case 54:this.styleChange();case 55:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(e){this.xingbieIndex=e.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},touxiangTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.touxiang="upload/"+t.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var t=u(r.default.mark((function t(){var n,i,a,u,s,o,c,h,l,f;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(this.ruleForm.zhanghao){t.next=3;break}return this.$utils.msg("账号不能为空"),t.abrupt("return");case 3:if(this.ruleForm.mima){t.next=6;break}return this.$utils.msg("密码不能为空"),t.abrupt("return");case 6:if(this.ruleForm.xingming){t.next=9;break}return this.$utils.msg("姓名不能为空"),t.abrupt("return");case 9:if(!this.ruleForm.shouji||this.$validate.isMobile(this.ruleForm.shouji)){t.next=12;break}return this.$utils.msg("手机应输入手机格式"),t.abrupt("return");case 12:if(!this.ruleForm.shenfenzheng||this.$validate.checkIdCard(this.ruleForm.shenfenzheng)){t.next=15;break}return this.$utils.msg("身份证应输入身份证格式"),t.abrupt("return");case 15:if(!this.ruleForm.money||this.$validate.isNumber(this.ruleForm.money)){t.next=18;break}return this.$utils.msg("余额应输入数字"),t.abrupt("return");case 18:if(!this.cross){t.next=34;break}if(s=e.getStorageSync("statusColumnName"),o=e.getStorageSync("statusColumnValue"),""==s){t.next=34;break}if(n||(n=e.getStorageSync("crossObj")),s.startsWith("[")){t.next=30;break}for(c in n)c==s&&(n[c]=o);return h=e.getStorageSync("crossTable"),t.next=28,this.$api.update("".concat(h),n);case 28:t.next=34;break;case 30:i=Number(e.getStorageSync("userid")),a=n["id"],u=e.getStorageSync("statusColumnName"),u=u.replace(/\[/,"").replace(/\]/,"");case 34:if(!a||!i){t.next=56;break}return this.ruleForm.crossuserid=i,this.ruleForm.crossrefid=a,l={page:1,limit:10,crossuserid:i,crossrefid:a},t.next=40,this.$api.list("yonghu",l);case 40:if(f=t.sent,!(f.data.total>=u)){t.next=46;break}return this.$utils.msg(e.getStorageSync("tips")),t.abrupt("return",!1);case 46:if(!this.ruleForm.id){t.next=51;break}return t.next=49,this.$api.update("yonghu",this.ruleForm);case 49:t.next=53;break;case 51:return t.next=53,this.$api.add("yonghu",this.ruleForm);case 53:this.$utils.msgBack("提交成功");case 54:t.next=64;break;case 56:if(!this.ruleForm.id){t.next=61;break}return t.next=59,this.$api.update("yonghu",this.ruleForm);case 59:t.next=63;break;case 61:return t.next=63,this.$api.add("yonghu",this.ruleForm);case 63:this.$utils.msgBack("提交成功");case 64:case"end":return t.stop()}}),t,this)})));function n(){return t.apply(this,arguments)}return n}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,n=t.getFullYear(),r=t.getMonth()+1,i=t.getDate();return"start"===e?n-=60:"end"===e&&(n+=2),r=r>9?r:"0"+r,i=i>9?i:"0"+i,"".concat(n,"-").concat(r,"-").concat(i)},toggleTab:function(e){this.$refs[e].show()}}};t.default=c}).call(this,n("543d")["default"])},5882:function(e,t,n){"use strict";var r,i=function(){var e=this,t=e.$createElement,n=(e._self._c,e.ruleForm.touxiang.split(","));e.$mp.data=Object.assign({},{$root:{g0:n}})},a=[];n.d(t,"b",(function(){return i})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return r}))},"6e35":function(e,t,n){"use strict";n.r(t);var r=n("5882"),i=n("04b3");for(var a in i)"default"!==a&&function(e){n.d(t,e,(function(){return i[e]}))}(a);n("bb9e");var u,s=n("f0c5"),o=Object(s["a"])(i["default"],r["b"],r["c"],!1,null,"827511aa",null,!1,r["a"],u);t["default"]=o.exports},7638:function(e,t,n){},bb9e:function(e,t,n){"use strict";var r=n("7638"),i=n.n(r);i.a},c490:function(e,t,n){"use strict";(function(e){n("6cdc"),n("921b");r(n("66fd"));var t=r(n("6e35"));function r(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,n("543d")["createPage"])}},[["c490","common/runtime","common/vendor"]]]);