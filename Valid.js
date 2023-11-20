
function check()
{
let un = document.getElementById("un");
let pw = document.getElementById("pw");


if(un.value=="")
{
alert("username cannot be empty");
un.focus();
return false;
}

if(un.value.trim().length==0)
{
alert("username cannot be only spaces");
un.focus();
un.value="";
return false;
}

if(un.value.length<2)
{
alert("username should be min 2 characters");
name.focus();
name.value="";
return false;
}

if(pw.value=="")
{
alert("password cannot be empty");
pw.focus();
return false;
}
if(pw.value.length<4||pw.value.length>8)
{
alert("password should min 4 characters and max 8 characters");
pw.focus();
pw.value="";
return false;
}

if(pw.value.trim().length==0)
{
alert("password cannot be only spaces");
pw.focus();
pw.value="";
return false;
}

}