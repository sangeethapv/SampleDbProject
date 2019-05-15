function validateForm()
{
 
	var fname = document.getElementById("fname-txt").value;
    if(fname == "")
	{
		   document.getElementById("fname-txt").style.borderColor="red";
		   document.getElementById("fnamerror").style.display = "block";
           document.getElementById("fnamerror").innerHTML = "Please enter first name";
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
    }
    
    var select = document.getElementById("select-txt").value;
    if(select == "select")
	{
		   document.getElementById("selecterror").style.display = "block";
           document.getElementById("selecterror").innerHTML = "Please select option";
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
    }

     var address = document.getElementById("address-txt").value;
    if(address == "")
	{
		   
		   document.getElementById("addresserror").style.display = "block";
           document.getElementById("addresserror").innerHTML = "Please enter address";
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

    if (document.getElementById("select1-txt").checked) 
      {
          var select1 = document.getElementById("select1-txt").value;
         
      }
      else{
      	   var select1 = "Off"
      	 
      }

    if(fname != "" && lname != "" && mname != "" && pattern.test(dob) && select != "select" && father != "" && mother != "" && reg.test(email) && ph_pattern.test(phone) && address != "" && checkedValue != null)
    {
    	window.location.href = "login.html";
    }

}

function resetButton()
{
	document.getElementById("myform").reset();
}
