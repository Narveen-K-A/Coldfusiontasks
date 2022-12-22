function validateform(){
    var firstName = document.getElementById('fname');
    var lastname = document.getElementById('lname');
    var option = document.getElementById('option');
    var date = document.getElementById('date');
    var url = document.getElementById('url');
    var mail = document.getElementById('email');
    var phone = document.getElementById('tel');

    var validatedOption = selectValidate(option);
    var validatefirstName = optionValidate(firstName);
    var validatelastname = lastnameValidate(lastname);
    var validatedate = dateValidate(date);
    var validateurl = urlValidate(url);
    var validatemail = mailValidate(mail);
    var validatenum = numValidate(phone);
    if(validatedOption && validatefirstName && validatelastname && validatedate && validateurl && validatemail && validatenum)
		return true;
    else 
		return false;
}

function error(id){
document.getElementById(id).style.visibility="visible";
}

function success(id){
document.getElementById(id).innerHTML="";
}

function optionValidate(firstName){ 

if(firstName.value==""){
  error('name_error');
  firstName.style.border="1px solid red";  
  return false;
}else{
   success('name_error');
   firstName.style.border="1px solid black"
   return true;
}
}

function lastnameValidate(lastname){
if(lastname.value==""){
	error('name_error');
	lastname.style.border="1px solid red";  
	return false;
}else{
	success('name_error');
	lastname.style.border="1px solid black"
	return true;
}
}

function selectValidate(option){
if(option.value==""){
	error('operror');
	option.style.border="1px solid red";  
	return false;
}else{
	success('operror');
	option.style.border="1px solid black"
	return true;
}
}

function dateValidate(date){
if(date.value==""){
	error('date_error');
	date.style.border="1px solid red";  
	return false;
}else{
	success('date_error');
	date.style.border="1px solid black"
	return true;
}
}

function urlValidate(url){
if(url.value==""){
	error('url_error');
	url.style.border="1px solid red";  
	return false;
}else{
	success('url_error');
	url.style.border="1px solid black"
	return true;
}
}

function mailValidate(mail){
if(mail.value==""){
	error('email_error');
	mail.style.border="1px solid red";  
	return false;
}else{
	success('email_error');
	mail.style.border="1px solid black"
	return true;
}
}

function numValidate(phone){
if(phone.value==""){
	error('num_error');
	phone.style.border="1px solid red";  
	return false;
}else{
	success('num_error');
	phone.style.border="1px solid black"
	return true;
}
}


