document;

var el = document.getElementsByTagName('a');
// for (i in el) {
//   el[i].style.border = '1px solid red';
// };



function saDaTay() {
  var gif = document.createElement('img');
  gif.src = "http://i.giphy.com/ZGuCTJqQxefrq.gif";
  document.getElementById("placehere").appendChild(gif); 
}

// var targ = document.getElementById("placehere").appendChild(gif); 
// targ.addEventListener("click", saDaTay);