/**
 * 
 */

function formValidation()
{

var uname = document.registration.username;
var firstname=document.registration.firstname;
var lastname=document.registration.lastname;
var passid = document.registration.pass;
var umsex = document.registration.msex;
var ufsex = document.registration.fsex; 



if(allLetter(uname,6,12))
{
if(allLetterF(firstname))
{ 
if(allLetterL(lastname))
{
	
if(passid_validation(passid,7,12))
{
if(validsex(umsex,ufsex))
{
}
} 
}
}
}

return true;

} 

function allLetter(uname ,mx,my)
{ 
var letters = /^[A-Za-z]+$/;
var usname_len = uname.value.length;
if(uname.value.match(letters) && usname_len >= mx && usname_len < my)
{
return true;
}
else
{
alert('Username must have alphabet characters & the length of username must be greater than 6 and less than 12');
uname.focus();
return false;

}
return true;
}


function allLetterF(firstname)
{ 
var letters = /^[A-Za-z]+$/;
if(firstname.value.match(letters))
{
return true;
}
else
{
alert('Firstname must have alphabet characters only');
firstname.focus();
return false;
}
}


function allLetterL(lastname)
{ 
var letters = /^[A-Za-z]+$/;
if(lastname.value.match(letters))
{
return true;
}
else
{
alert('Lastname must have alphabet characters only');
lastname.focus();
return false;
}
}


function passid_validation(passid,mx,my)
{
var passid_len = passid.value.length;
if (passid_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
passid.focus();
return false;
}


}
function validsex(umsex,ufsex)
{
x=0;

if(umsex.checked) 
{
x++;
} if(ufsex.checked)
{
x++; 
}
if(x==0)
{
alert('Select Male/Female');
umsex.focus();
return false;
}
else
{
alert('Form Succesfully Submitted');
window.location.reload();
return true;
}
}





