function checkPassword() 
{
		var password1 = $("#password1").val();
		var password2 = $("#password2").val();
		var errorMessage = $("#errorMessage");
		if (password1 != password2) 
		{
			errorMessage.show();
			$("#submit-btn").attr('disabled','disabled'); //disable submit button 
		} else 
		{
			errorMessage.hide();
			$("#submit-btn").removeAttr('disabled'); //enable submit button
		}
	}
function checkEmailAlreadyExists()
{
	var email = $("#email").val();
	var emailAlreadyExitsMessage = $("#emailAlreadyExitsMessage");
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function()
	{
		if(xhr.readyState == 4)
		{
			if(xhr.responseText != "")
			{
				emailAlreadyExitsMessage.html(xhr.responseText);
				emailAlreadyExitsMessage.show();
				$("#submit-btn").attr('disabled','disabled'); //disable submit button 
			}
			else
			{
				emailAlreadyExitsMessage.hide();
				$("#submit-btn").removeAttr('disabled'); //enable submit button
			}
		}
	}
	xhr.open("GET", "checkEmailAlreadyExists?email="+email,true);
	xhr.send();
}	