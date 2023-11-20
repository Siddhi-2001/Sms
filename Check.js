function valid()
{
let rno = document.getElementById("rn");
let name = document.getElementById("name");
let marks = document.getElementById("marks");

if(rno.value=="")
{
alert("rno cannot be empty");
rno.focus();
return false;
}

if(rno.value.trim().length==0)
{
alert("rno cannot be only spaces");
rno.focus();
rno.value="";
return false;
}

if(rno.value<1)
{
alert("rno cannot be less than 1");
rno.focus();
rno.value="";
return false;
}

if(name.value=="")
{
alert("name cannot be empty");
name.focus();
return false;
}

if(name.value.length<2)
{
alert("name should be min 2 characters");
name.focus();
name.value="";
return false;
}

if(name.value.trim().length==0)
{
alert("name cannot be only spaces");
name.focus();
name.value="";
return false;
}

if(!name.value.match(/^[A-z]+$/ ))
{
alert("name can contain only alphabets");
name.focus();
name.value="";
return false;
}



if(marks.value=="")
{
alert("marks cannot be empty");
marks.focus();
return false;
}

if(marks.value.trim().length==0)
{
alert("marks cannot be only spaces");
marks.focus();
marks.value="";
return false;
}

if(marks.value<0||marks.value>=100)
{
alert("enter valid marks");
marks.focus();
marks.value="";
return false;
}
}