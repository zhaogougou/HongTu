// var index = 0;
// var timer = null;
// var $div = $('.loginbg img'); //获取背景图片div
// timer = setInterval(auto, 5000);
// auto();
// //背景图片循环轮播,通过改变透明度实现
// function auto() {
//     index++;
//     index = index > 2 ? 0 : index;
//     $div.eq(index).animate({"opacity": "1"}, 1000).siblings().animate({"opacity": "0"}, 1000);
// }
// var agree = document.getElementById("agree");
//     var sub = document.getElementById("sub");
//     var password = document.getElementById('password');
//     var password2 = document.getElementById('password2');
//     var password2Span = document.getElementById("password2pan");
//
//     agree.onclick = function () {
//       sub.disabled = !agree.checked;
//     };
//
//     function Sub() {
//         proce();
//       codePassword();
//       codeTel();
//       return proce() && codePassword() && codeTel();
//     }
// var XMLHttpReq;
//
// function createXMLHttpRequest() //解析函数
// {
//     if (window.XMLHttpRequest) //非IE
//     {
//         XMLHttpReq = new XMLHttpRequest(); //ajax的核心类
//     } else if (window.ActiveXObject) //IE游览器的解析方法
//     {
//         try {
//             XMLHttpReq = new ActiveXObject("Msxm12.XMLHTTP");
//         } catch (e) {
//             try {
//                 XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
//             } catch (e) {}
//         }
//     }
// }
//
// function send(url) {
//
//     createXMLHttpRequest();
//
//     url = url + "?namek=" + document.getElementById("user").value;
//
//     XMLHttpReq.open("get", url);
//     XMLHttpReq.onreadystatechange = proce;
//     XMLHttpReq.send(null);
// }
//
// function proce() {
//     if (XMLHttpReq.readyState === 4) {
//             if (XMLHttpReq.status === 200) {
//                 var str = XMLHttpReq.responseText;
//                 document.getElementById("userpan").innerHTML = str;
//                 return str === "可以使用";
//             }
//         }
//     }
//
//     function codePassword() {
//       return codedata("password", /^(\w){6,20}$/);
//     }
//
//     function codeTel() {
//       return codedata("tel", /^1[3456789]\d{9}$/);
//     }
//
//     function codePassword2() {
//       if (!password.value) {
//         password2Span.innerHTML = "确认密码不能为空";
//         return false;
//       } else if (password2.value == password.value) {
//         password2Span.innerHTML = "密码一致";
//         return true;
//       } else {
//         password2Span.innerHTML = "前后密码不一致";
//         return false;
//       }
//
//     }
//
//     function codedata(ipt, reg) {
//       var ipts = document.getElementById(ipt);
//       var span = document.getElementById(ipt + "pan");
//       if (!ipts.value) {
//         span.innerHTML = ipts.alt + "不正确";
//         return false;
//       } else if (reg.test(ipts.value)) {
//           span.innerHTML = ipts.alt + "正确";
//           return true;
//       } else {
//           span.innerHTML = ipts.alt + "不正确";
//           return false;
//       }
//     }