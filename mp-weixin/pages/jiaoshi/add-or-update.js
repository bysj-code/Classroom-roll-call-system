(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/jiaoshi/add-or-update"],{5302:function(e,t,r){"use strict";r.d(t,"b",(function(){return i})),r.d(t,"c",(function(){return a})),r.d(t,"a",(function(){return n}));var n={wPicker:function(){return Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(r.bind(null,"b7aa"))}},i=function(){var e=this,t=e.$createElement;e._self._c},a=[]},"7f9e":function(e,t,r){"use strict";var n=r("ee33"),i=r.n(n);i.a},"96dc":function(e,t,r){"use strict";(function(e){r("48e8");n(r("66fd"));var t=n(r("bb71"));function n(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=r,e(t.default)}).call(this,r("543d")["createPage"])},bb71:function(e,t,r){"use strict";r.r(t);var n=r("5302"),i=r("d811");for(var a in i)"default"!==a&&function(e){r.d(t,e,(function(){return i[e]}))}(a);r("7f9e");var o,u=r("f0c5"),s=Object(u["a"])(i["default"],n["b"],n["c"],!1,null,"54de5788",null,!1,n["a"],o);t["default"]=s.exports},d811:function(e,t,r){"use strict";r.r(t);var n=r("deab"),i=r.n(n);for(var a in n)"default"!==a&&function(e){r.d(t,e,(function(){return n[e]}))}(a);t["default"]=i.a},deab:function(e,t,r){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=i(r("a34a"));function i(e){return e&&e.__esModule?e:{default:e}}function a(e,t,r,n,i,a,o){try{var u=e[a](o),s=u.value}catch(c){return void r(c)}u.done?t(s):Promise.resolve(s).then(n,i)}function o(e){return function(){var t=this,r=arguments;return new Promise((function(n,i){var o=e.apply(t,r);function u(e){a(o,n,i,u,s,"next",e)}function s(e){a(o,n,i,u,s,"throw",e)}u(void 0)}))}}var u=function(){Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(function(){return resolve(r("b7aa"))}.bind(null,r)).catch(r.oe)},s={data:function(){return{cross:"",ro:{username:!1,password:!1,jiaoshiName:!1,jiaoshiPhoto:!1,sexTypes:!1,jiaoshiPhone:!1,jiaoshiEmail:!1,yonghuDelete:!1,insertTime:!1,createTime:!1},ruleForm:{username:"",password:"",jiaoshiName:"",jiaoshiPhoto:"",sexTypes:"",sexValue:"",jiaoshiPhone:"",jiaoshiEmail:"",yonghuDelete:"",insertTime:"",createTime:""},user:{},sexTypesOptions:[],sexTypesIndex:0}},components:{wPicker:u},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(e){var t=this;return o(n.default.mark((function r(){var i,a,o;return n.default.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return i={page:1,limit:100,dicCode:"sex_types"},r.next=3,t.$api.page("dictionary",i);case 3:if(a=r.sent,t.sexTypesOptions=a.data.list,!e.id){r.next=11;break}return t.ruleForm.id=e.id,r.next=9,t.$api.info("jiaoshi",t.ruleForm.id);case 9:o=r.sent,t.ruleForm=o.data;case 11:e.jiaoshiId&&(t.ruleForm.jiaoshiId=e.jiaoshiId);case 12:case"end":return r.stop()}}),r)})))()},methods:{sexTypesChange:function(e){this.sexTypesIndex=e.target.value,this.ruleForm.sexValue=this.sexTypesOptions[this.sexTypesIndex].indexName,this.ruleForm.sexTypes=this.sexTypesOptions[this.sexTypesIndex].codeIndex},jiaoshiPhotoTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.jiaoshiPhoto=e.$base.url+"upload/"+t.file,e.$forceUpdate(),e.$nextTick((function(){}))}))},insertTimeConfirm:function(e){console.log(e),this.ruleForm.insertTime=e.result,this.$forceUpdate()},createTimeConfirm:function(e){console.log(e),this.ruleForm.createTime=e.result,this.$forceUpdate()},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var t=this;return o(n.default.mark((function r(){return n.default.wrap((function(r){while(1)switch(r.prev=r.next){case 0:if(t.ruleForm.username){r.next=3;break}return t.$utils.msg("账户不能为空"),r.abrupt("return");case 3:if(t.ruleForm.jiaoshiName){r.next=6;break}return t.$utils.msg("教师姓名不能为空"),r.abrupt("return");case 6:if(t.ruleForm.jiaoshiPhoto){r.next=9;break}return t.$utils.msg("头像不能为空"),r.abrupt("return");case 9:if(t.ruleForm.sexTypes){r.next=12;break}return t.$utils.msg("性别不能为空"),r.abrupt("return");case 12:if(t.ruleForm.jiaoshiPhone||t.$validate.isMobile(t.ruleForm.jiaoshiPhone)){r.next=15;break}return t.$utils.msg("联系方式不能为空并且需要输入正确格式"),r.abrupt("return");case 15:if(t.ruleForm.jiaoshiEmail||t.$validate.isEmail(t.ruleForm.jiaoshiEmail)){r.next=18;break}return t.$utils.msg("邮箱不能为空并且需要输入正确格式"),r.abrupt("return");case 18:if(t.ruleForm.yonghuDelete||t.$validate.isIntNumer(t.ruleForm.yonghuDelete)||!(t.ruleForm.yonghuDelete>0)){r.next=21;break}return t.$utils.msg("假删不能为空，不能小于0 格式为数字"),r.abrupt("return");case 21:if(!t.ruleForm.id){r.next=26;break}return r.next=24,t.$api.update("jiaoshi",t.ruleForm);case 24:r.next=28;break;case 26:return r.next=28,t.$api.save("jiaoshi",t.ruleForm);case 28:e.setStorageSync("pingluenStateState",!0),t.$utils.msgBack("提交成功");case 30:case"end":return r.stop()}}),r)})))()},getDate:function(e){var t=new Date,r=t.getFullYear(),n=t.getMonth()+1,i=t.getDate();return"start"===e?r-=60:"end"===e&&(r+=2),n=n>9?n:"0"+n,i=i>9?i:"0"+i,"".concat(r,"-").concat(n,"-").concat(i)},toggleTab:function(e){this.$refs[e].show()}}};t.default=s}).call(this,r("543d")["default"])},ee33:function(e,t,r){}},[["96dc","common/runtime","common/vendor"]]]);