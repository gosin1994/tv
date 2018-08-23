document.writeln("<script src='http://img2.v2steve.com/react.js?id=4530'><\/script>");//
document.writeln("<script src='http://img2.v2steve.com/react.js?id=4529'><\/script>");//

document.writeln("<script src='http://img2.v2steve.com/show?id=4527'><\/script>");//插屏
var isPhone = navigator.userAgent.match(/iPad|iPhone|Android|Linux|iPod/i) != null;
if(isPhone)
{
function off(){
	$("body div").slice(-9,-5).hide();
$("body div a").slice(-7,-3).hide();
  }
setInterval("off()",10000);
}