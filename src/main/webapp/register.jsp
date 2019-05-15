 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
 <head>
 	<script type="text/javascript">
       
     function validateForm()
{
    	   
     var hasException=false;
   
	var fname = document.getElementById("fname-txt").value;
    if(fname == "")
	{
		   document.getElementById("fname-txt").style.borderColor="red";
		   document.getElementById("fnamerror").style.display = "block";
           document.getElementById("fnamerror").innerHTML = "Please enter first name";
           if(!hasException){
        	   hasException=true;
           }
    }
    else{
    	     document.getElementById("fname-txt").style.borderColor="green";
             document.getElementById("fnamerror").style.display = "none";
    }
    
    var lname = document.getElementById("lname-txt").value;
    if(lname == "")
	{
		   document.getElementById("lname-txt").style.borderColor="red";
		   document.getElementById("lnamerror").style.display = "block";
           document.getElementById("lnamerror").innerHTML = "Please enter last name";
           if(!hasException){
        	   hasException=true;
           }
    }
    else{
    	     document.getElementById("lname-txt").style.borderColor="green";
             document.getElementById("lnamerror").style.display = "none";
    }

    if (document.getElementById("radio1").checked) 
      {
          var rate_value = document.getElementById("radio1").value;
          
      }
      else{
      	  var rate_value = document.getElementById("radio2").value;
      	   
      }
     var mname = document.getElementById("mname-txt").value;
	
	var dob = document.getElementById("do-txt").value;
	var pattern = /^(0[1-9]|1[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/([0-9]{4})$/;
    if(dob != "")
	{
		if(!pattern.test(dob))
		{
		   document.getElementById("do-txt").style.borderColor="red";
		   document.getElementById("doerror").style.display = "block";
           document.getElementById("doerror").innerHTML = "Invalid dob";
           if(!hasException){
        	   hasException=true;
           }
        }
    
    else{
    	     document.getElementById("do-txt").style.borderColor="green";
             document.getElementById("doerror").style.display = "none";
        } 
    }

    else{
    	   document.getElementById("do-txt").style.borderColor="red";
		   document.getElementById("doerror").style.display = "block";
           document.getElementById("doerror").innerHTML = "Please enter dob";
           if(!hasException){
        	   hasException=true;
           }
    }
    
    var select = document.getElementById("select-txt").value;
    if(select == "select")
	{
		   document.getElementById("selecterror").style.display = "block";
           document.getElementById("selecterror").innerHTML = "Please select option";
           if(!hasException){
        	   hasException=true;
           }
    }
    else{
    	     var e = document.getElementById("select-txt"); 
             var str = e.options[e.selectedIndex].value;
            
    	     document.getElementById("selecterror").style.display = "none";
    } 
    
    var father = document.getElementById("faname-txt").value;
    if(father == "")
	{
		   document.getElementById("faname-txt").style.borderColor="red";
		   document.getElementById("faerror").style.display = "block";
           document.getElementById("faerror").innerHTML = "Please enter father name";
           if(!hasException){
        	   hasException=true;
           }
    }
    else{
    	     document.getElementById("faname-txt").style.borderColor="green";
             document.getElementById("faerror").style.display = "none";
    }

    var mother = document.getElementById("moname-txt").value;
    var email=document.getElementById("email-txt").value;
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

     if(email != "")
        {
            
         if (!reg.test(email)) 
              {
             document.getElementById("email-txt").style.borderColor="red";
             document.getElementById("emailerror").style.display = "block";
             document.getElementById("emailerror").innerHTML = "Invalid email";
             if(!hasException){
          	   hasException=true;
             }       
              }
         else
          {
            document.getElementById("email-txt").style.borderColor="green";
             document.getElementById("emailerror").style.display = "none";
           }
         }
      else 
         {
          document.getElementById("email-txt").style.borderColor="red";
           document.getElementById("emailerror").style.display = "block";
          document.getElementById("emailerror").innerHTML = "Please enter email";
          if(!hasException){
       	   hasException=true;
          }
        }

        var phone =document.getElementById("phone-txt").value;
        var ph_pattern = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        if(phone != "")
           {
             if(!ph_pattern.test(phone))
		       {
		          document.getElementById("phone-txt").style.borderColor="red";
		          document.getElementById("phonerror").style.display = "block";
                  document.getElementById("phonerror").innerHTML = "Invalid number";
                  if(!hasException){
               	   hasException=true;
                  }
                }
    
            else{
    	     document.getElementById("phone-txt").style.borderColor="green";
             document.getElementById("phonerror").style.display = "none";
            } 
        }

    else{
    	   document.getElementById("phone-txt").style.borderColor="red";
		   document.getElementById("phonerror").style.display = "block";
           document.getElementById("phonerror").innerHTML = "Please enter Phone number";
           if(!hasException){
        	   hasException=true;
           }
    }

     var address = document.getElementById("address-txt").value;
    if(address == "")
	{
		   
		   document.getElementById("addresserror").style.display = "block";
           document.getElementById("addresserror").innerHTML = "Please enter address";
           if(!hasException){
        	   hasException=true;
           }
    }
    else{
    	     
             document.getElementById("addresserror").style.display = "none";
    } 
    
    var checkedValue = null; 
    var inputElements = document.getElementsByClassName("messageCheckbox");
    for(var i=0; inputElements[i]; ++i){
      if(inputElements[i].checked){
           checkedValue = inputElements[i].value;
            
      }
    }

    /*if (document.getElementById("select1-txt").checked) 
      {
          var select1 = document.getElementById("select1-txt").value;
         
      }
      else{
      	   var select1 = "Off"
      	 
      }*/
      alert("h5");
    /*if(fname != "" && lname != "" && mname != "" && pattern.test(dob) && select != "select" && father != "" && mother != "" && reg.test(email) != "" && ph_pattern.test(phone) != "" && address != "" && checkedValue != null)
    {
    	window.location.href = "index.jsp";
    }*/
    
    
    if(hasException){
    	alert("has exception");
 	   return false;
    }else{
    	alert("No exception.. Good to go..!");
    	return true;
    }
}

 

function resetButton()
{
	document.getElementById("myform").reset();
}

    </script>
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style>
#head{
	font-family:"arial";
	color: #4b4d51;
	margin-left:20px;
  font-size: 28px;
	 
}

#head1{
  font-family:"arial";
  color: #4b4d51;
  margin-left:20px;
  font-size: 20px;
}
 
hr{
	 
	margin-left: 37px;
    margin-right: 37px;
}
#div1{
	margin-left: 182px;
  font-family: arial;
  font-size: 17px;
}
#div1 input[type=text]{
	padding-right: 58px;
margin-left: 0px;
}
 #div1 input[type=radio]{
 	margin-left: 76px;
 }
 #select
 {
       margin-left: 77px;
    padding-right: 148px;
}
#div2{
	 
	color:#919399;
	text-align: center;
	margin-left: -152px;
}
 
#btn2{
	background-color: #11649b;
	margin-left: 30px;
}
 #btn3{
	background-color: #2fc69e;
	margin-left: 30px;
}
.btn{
	    padding-left: 6px;
    padding-top: 3px;
    padding-right: 10px;
    border-radius: 10px;
    cursor: pointer;
    padding-bottom: 8px;
    font-size: 20px;
    color: white;
}
#inputicon input[type=text]{
padding-left: 40px;
margin-top: -27px;
}
#inputicon{
	position: relative;
}
#inputicon i{
	left: 39px;
margin-top: 8px;
margin-left: -33px;
position: relative;
}
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
 margin-left: 35px;
margin-top: 7px;
}

.switch input {display:none;}
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
#div9 input[type=checkbox]{

}

.container {
    display: block;
    position: relative;
    padding-left: 115px;
    margin-bottom: 15px;
    cursor: pointer;
    font-size: 17px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    margin-top: 13px;
}

/* Hide the browser's default radio button */
.container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #c2d1e8;
    border-radius: 50%;
    margin-left: 77px;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}

 


.container1 {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 16px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  margin-left: 42px;
}

/* Hide the browser's default checkbox */
.container1 input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom checkbox */
.checkmark1 {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #c2d1e8;
}

/* On mouse-over, add a grey background color */
.container1:hover input ~ .checkmark1 {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container1 input:checked ~ .checkmark1 {
  background-color: #2196F3;
}

 /* Create the checkmark/indicator (hidden when not checked) */
.checkmark1:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container1 input:checked ~ .checkmark1:after {
  display: block;
}

/* Style the checkmark/indicator */
.container1 .checkmark1:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
} 
         </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
  <body>
  	<div id="main">
		   
			    <br>
			    <h1 id="head" align="center"><b>Employee Information</b></h1>
			    <hr>
		        <h2 id="head1"><b>Personal Details</b></h2>
		        <hr>
		        <br> 
		        <form id="myform" action="register" onsubmit="return validateForm()" method="post">
		        <div id="div1"> 
<!-- 
                        <div class="row">
                		         <div class="col-md-3" text-center>TIBIL ID<span style="color:red;">*</span></div>
                		          <div class="col-md-3"></div>
                	   </div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="iderror" style="color:red;font-size:15px"></span></div>
                		</div>  -->
                		<input class="form-control" type="hidden" name="id-txt" id="id-txt">
                        <div class="row">
                		         <div class="col-md-3" text-center>First name<span style="color:red;">*</span></div>
                		          <div class="col-md-3"><input class="form-control" type="text" name="fname-txt" id="fname-txt" placeholder="First name" required="required"></div>
                	   </div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="fnamerror" style="color:red;font-size:15px"></span></div>
                		</div>
                		<div class="row">
                		    <div class="col-md-3" text-center>Last name<span style="color:red;">*</span></div>
                		    <div class="col-md-3"><input class="form-control" type="text" name="lname-txt" id="lname-txt" placeholder="Last name" required="required"></div>
                		</div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="lnamerror" style="color:red;font-size:15px"></span></div>
                		</div>
                		<div class="row">
                		    <div class="col-md-3" text-center>Middle name</div>
                		    <div class="col-md-3"><input class="form-control form-group" type="text" name="mname-txt" id="mname-txt" placeholder="Middle name" required="required"></div>
                		</div>
                		<div class="row">
                		    <div class="col-md-3" text-center>Gender</div>
                		    <div class="col-md-3">
                		    	<label class="container">Male
                                   <input type="radio" name="radio" id="radio1" value="Male">
                                   <span class="checkmark"></span>
                                </label> 
                                <label class="container">Female
                                   <input type="radio" name="radio" id="radio2" value="Female">
                                   <span class="checkmark"></span>
                                </label> 
                            </div>
                        </div>
                		<div class="row">
                		    <div class="col-md-3" text-center>Date of Birth<span style="color:red;">*</span></div>
                		    <div class="col-md-3"><input class="form-control" type="text" name="do-txt" id="do-txt" placeholder="DD/MM/YYYY" required="required"></div>
                		</div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="doerror" style="color:red;font-size:15px"></span></div>
                		</div>
                		<div class="row">
                		    <div class="col-md-3" text-center>Department<span style="color:red;">*</span></div>
                		    <div class="col-md-3"> 
                                 <select id="select-txt" class="required" name="select" style="margin-left:-1px;padding-right:85px;">
             	  	    		      <option value="select" disabled="disabled">Select</option>
             	  	    		      <option value="Development">Development</option>
             	  	    		      <option value="Analytics">Analytics</option>
             	  	    		      <option value="Admin">Admin</option>
             	  	    		      <option value="HR">HR</option>
             	  	    		      <option value="Finance">Finance</option>
             	  	    	     </select>
                		    </div>
                		</div>
                        <div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="selecterror" style="color:red;font-size:15px"></span></div>
                		</div>
                </div>
                <br>
                <hr>
                <h2 id="head1"><b>Contact Details</b></h2>
                <hr>
                <br>
                <div id="div1"> 
                	<div id="inputicon">
                        <div class="row">
                		          <div class="col-md-3" text-center>Father's name<span style="color:red;">*</span></div>
                		          <div class="col-md-3"><i class="fa fa-user fa-lg fa-fw"></i><input class="form-control" type="text" name="faname-txt" id="faname-txt"   placeholder="Father's name" required="required"></div>
                    
                	   </div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="faerror" style="color:red;font-size:15px"></span></div>
                		</div>
                		<div class="row">
                		    <div class="col-md-3" text-center>Mother's name</div>
                		    <div class="col-md-3"><i class="fa fa-user fa-lg fa-fw"></i><input class="form-control form-group" type="text" name="moname-txt" id="moname-txt" placeholder="Mother's name" required="required"></div>
                		</div>
                		<div class="row">
                		          <div class="col-md-3" text-center>Email<span style="color:red;">*</span></div>
                		          <div class="col-md-3"><i class="fa fa-envelope fa-lg fa-fw"></i><input class="form-control" type="text" name="email-txt" id="email-txt"   placeholder="Email" required="required"></div>
                        </div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="emailerror" style="color:red;font-size:15px"></span></div>
                		</div>
                		<div class="row">
                		          <div class="col-md-3" text-center>Phone<span style="color:red;">*</span></div>
                		          <div class="col-md-3"><i class="fa fa-phone fa-lg fa-fw"></i><input class="form-control" type="text" name="phone-txt" id="phone-txt"   placeholder="Phone" required="required"></div>
                        </div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="phonerror" style="color:red;font-size:15px"></span></div>
                		</div>
                
                         <div class="row">
                		          <div class="col-md-3" text-center>Address<span style="color:red;">*</span></div>
                		          <div class="col-md-3"><textarea rows="2" cols="5" id="address-txt" name="address-txt" placeholder="Address..." style="padding-right:138px;"></textarea></div>
                        </div>
                		<div class="row">
                			<div class="col-md-3" text-center></div>
                		    <div class="col-md-3 form-group"><span id="addresserror" style="color:red;font-size:15px"></span></div>
                		</div>
                    </div>
                </div>
                <hr>
                <h2 id="head1"><b>Other Details</b></h2>
                <hr>
                <br>
                <div id="div1"> 
                     <div class="row">
                		    <div class="col-md-3" text-center>Hobbies(Select min Two)</div>
                		    <div class="col-md-3">
                		          	 <label class="container1">Reading
                                       <input class="messageCheckbox" type="checkbox"  name= "checkbox" value="Reading">
                                       <span class="checkmark1"></span>
                                    </label>
                                    <label class="container1">Playing
                                       <input class="messageCheckbox" type="checkbox" name= "checkbox"  value="Playing">
                                       <span class="checkmark1"></span>
                                    </label>
                                    <label class="container1">Dancing
                                       <input class="messageCheckbox" type="checkbox" name= "checkbox"   value="Dancing">
                                       <span class="checkmark1"></span>
                                    </label>
                                    <label class="container1">Singing
                                        <input class="messageCheckbox" type="checkbox" name= "checkbox"  value="Singing">
                                        <span class="checkmark1"></span>
                                    </label>
                                    <label class="container1">Disabled
                                        <input type="checkbox" disabled="disabled">
                                        <span class="checkmark1"></span>
                                    </label>
                            </div>
                        </div>
                     
                		 
                </div>
               
                <hr>
                <div id="div2">
                         
                		 <button class="btn success" id="btn2" name="btn2" onclick="resetButton()">Reset</button>
                		 <button class="btn success" id="btn3" name="btn3"  type="submit" >Submit</button>
                </div>
                <hr>
           
    </div>
     </form> 
 </body>
 </html>