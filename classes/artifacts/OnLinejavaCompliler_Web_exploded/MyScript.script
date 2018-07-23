function compile()
    {
var xmlhttp;
if(document.getElementById("code").value=="")
       {
alert("Please Insert Code");
          }
else
    {
var url="compile?code="+document.getElementById("code").value+"&className="
+document.getElementById("class").value;
if(window.XMLHttpRequest)
       {
xmlhttp=new XMLHttpRequest();
}
else{
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
     {
if(xmlhttp.readyState==4 && xmlhttp.status==200)
      {
document.getElementById("code1").innerHTML=xmlhttp.responseText;
}}
xmlhttp.open("GET",url,true);
xmlhttp.send();
}}
function run()
    {
var xmlhttp;
var url="run?className="+document.getElementById("class").value;
if(window.XMLHttpRequest)
{
xmlhttp=new XMLHttpRequest();
}
else{
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
     {
if(xmlhttp.readyState==4 && xmlhttp.status==200)
      {
document.getElementById("code1").innerHTML=xmlhttp.responseText;
}}
xmlhttp.open("GET",url,true);
xmlhttp.send();
}
function set()
    {
if(document.getElementById("class").value=="")
     
{
//alert("please Insert class Name");

document.getElementById("class").focus();
}
else
   {
var cls=document.getElementById("class").value;
document.getElementById("code").innerHTML="public class "+cls+"{\n\n"+"public "+cls+"(){\n\n }\n public static void main(String...args){\n\n }\n}";
}}
function blank(){
document.getElementById("class").value="";
document.getElementById("code").value="";
document.getElementById("code1").innerHTML="";
}