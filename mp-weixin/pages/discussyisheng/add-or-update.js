(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/discussyisheng/add-or-update"],{"080f":function(e,t,r){"use strict";r.r(t);var n=r("d1bc"),a=r("0963");for(var i in a)"default"!==i&&function(e){r.d(t,e,(function(){return a[e]}))}(i);r("25b6");var s,u=r("f0c5"),o=Object(u["a"])(a["default"],n["b"],n["c"],!1,null,"ddc16770",null,!1,n["a"],s);t["default"]=o.exports},"0963":function(e,t,r){"use strict";r.r(t);var n=r("84ca"),a=r.n(n);for(var i in n)"default"!==i&&function(e){r.d(t,e,(function(){return n[e]}))}(i);t["default"]=a.a},"25b6":function(e,t,r){"use strict";var n=r("91a0"),a=r.n(n);a.a},"84ca":function(e,t,r){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=a(r("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function i(e,t,r,n,a,i,s){try{var u=e[i](s),o=u.value}catch(c){return void r(c)}u.done?t(o):Promise.resolve(o).then(n,a)}function s(e){return function(){var t=this,r=arguments;return new Promise((function(n,a){var s=e.apply(t,r);function u(e){i(s,n,a,u,o,"next",e)}function o(e){i(s,n,a,u,o,"throw",e)}u(void 0)}))}}var u=function(){return Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(r.bind(null,"e2b1"))},o=function(){return r.e("components/xia-editor/xia-editor").then(r.bind(null,"064f"))},c={data:function(){return{cross:"",ruleForm:{refid:"",userid:"",avatarurl:"",nickname:"",content:"",reply:""},user:{},ro:{refid:!1,userid:!1,avatarurl:!1,nickname:!1,content:!1,reply:!1}}},components:{wPicker:u,xiaEditor:o},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var t=s(n.default.mark((function t(r){var a,i,s,u;return n.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a=e.getStorageSync("nowTable"),t.next=3,this.$api.session(a);case 3:if(i=t.sent,this.user=i.data,this.ruleForm.userid=e.getStorageSync("userid"),r.refid&&(this.ruleForm.refid=r.refid,this.ruleForm.nickname=e.getStorageSync("nickname")),!r.id){t.next=13;break}return this.ruleForm.id=r.id,t.next=11,this.$api.info("discussyisheng",this.ruleForm.id);case 11:i=t.sent,this.ruleForm=i.data;case 13:if(this.cross=r.cross,!r.cross){t.next=45;break}s=e.getStorageSync("crossObj"),t.t0=n.default.keys(s);case 17:if((t.t1=t.t0()).done){t.next=45;break}if(u=t.t1.value,"refid"!=u){t.next=23;break}return this.ruleForm.refid=s[u],this.ro.refid=!0,t.abrupt("continue",17);case 23:if("userid"!=u){t.next=27;break}return this.ruleForm.userid=s[u],this.ro.userid=!0,t.abrupt("continue",17);case 27:if("avatarurl"!=u){t.next=31;break}return this.ruleForm.avatarurl=s[u].split(",")[0],this.ro.avatarurl=!0,t.abrupt("continue",17);case 31:if("nickname"!=u){t.next=35;break}return this.ruleForm.nickname=s[u],this.ro.nickname=!0,t.abrupt("continue",17);case 35:if("content"!=u){t.next=39;break}return this.ruleForm.content=s[u],this.ro.content=!0,t.abrupt("continue",17);case 39:if("reply"!=u){t.next=43;break}return this.ruleForm.reply=s[u],this.ro.reply=!0,t.abrupt("continue",17);case 43:t.next=17;break;case 45:this.styleChange();case 46:case"end":return t.stop()}}),t,this)})));function r(e){return t.apply(this,arguments)}return r}(),methods:{styleChange:function(){this.$nextTick((function(){}))},avatarurlTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.avatarurl="upload/"+t.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var t=s(n.default.mark((function t(){var r,a,i,s,u,o,c,l,d,f,h,p,m,g;return n.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:for(this.ruleForm.avatarurl=e.getStorageSync("headportrait")?e.getStorageSync("headportrait"):"",r="",a=[],r&&(a=r.split(",")),i=0;i<a.length;i++)s=new RegExp(a[i],"g"),this.ruleForm.content.indexOf(a[i])>-1&&(this.ruleForm.content=this.ruleForm.content.replace(s,"**"));if(this.ruleForm.refid){t.next=8;break}return this.$utils.msg("关联表id不能为空"),t.abrupt("return");case 8:if(this.ruleForm.userid){t.next=11;break}return this.$utils.msg("用户id不能为空"),t.abrupt("return");case 11:if(this.ruleForm.content){t.next=14;break}return this.$utils.msg("评论内容不能为空"),t.abrupt("return");case 14:if(!this.cross){t.next=30;break}if(d=e.getStorageSync("statusColumnName"),f=e.getStorageSync("statusColumnValue"),""==d){t.next=30;break}if(u||(u=e.getStorageSync("crossObj")),d.startsWith("[")){t.next=26;break}for(h in u)h==d&&(u[h]=f);return p=e.getStorageSync("crossTable"),t.next=24,this.$api.update("".concat(p),u);case 24:t.next=30;break;case 26:o=Number(e.getStorageSync("userid")),c=u["id"],l=e.getStorageSync("statusColumnName"),l=l.replace(/\[/,"").replace(/\]/,"");case 30:if(!c||!o){t.next=53;break}return this.ruleForm.crossuserid=o,this.ruleForm.crossrefid=c,m={page:1,limit:10,crossuserid:o,crossrefid:c},t.next=36,this.$api.list("discussyisheng",m);case 36:if(g=t.sent,!(g.data.total>=l)){t.next=42;break}return this.$utils.msg(e.getStorageSync("tips")),t.abrupt("return",!1);case 42:if(!this.ruleForm.id){t.next=47;break}return t.next=45,this.$api.update("discussyisheng",this.ruleForm);case 45:t.next=49;break;case 47:return t.next=49,this.$api.add("discussyisheng",this.ruleForm);case 49:e.setStorageSync("discussyishengCleanType",!0),this.$utils.msgBack("提交成功");case 51:t.next=62;break;case 53:if(!this.ruleForm.id){t.next=58;break}return t.next=56,this.$api.update("discussyisheng",this.ruleForm);case 56:t.next=60;break;case 58:return t.next=60,this.$api.add("discussyisheng",this.ruleForm);case 60:e.setStorageSync("discussyishengCleanType",!0),this.$utils.msgBack("提交成功");case 62:case"end":return t.stop()}}),t,this)})));function r(){return t.apply(this,arguments)}return r}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,r=t.getFullYear(),n=t.getMonth()+1,a=t.getDate();return"start"===e?r-=60:"end"===e&&(r+=2),n=n>9?n:"0"+n,a=a>9?a:"0"+a,"".concat(r,"-").concat(n,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};t.default=c}).call(this,r("543d")["default"])},"91a0":function(e,t,r){},d1bc:function(e,t,r){"use strict";var n,a=function(){var e=this,t=e.$createElement;e._self._c},i=[];r.d(t,"b",(function(){return a})),r.d(t,"c",(function(){return i})),r.d(t,"a",(function(){return n}))},e70d:function(e,t,r){"use strict";(function(e){r("6cdc"),r("921b");n(r("66fd"));var t=n(r("080f"));function n(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,r("543d")["createPage"])}},[["e70d","common/runtime","common/vendor"]]]);