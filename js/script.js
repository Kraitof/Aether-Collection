// AJAX Check Username and email
function checkusername(){
  var str = document.getElementById('username').value;
  var notification = document.getElementById("usernamenotification");
  if (str.length == 0){
    document.getElementById("username").className = "input";
  } else {
    var xmlhttp = new XMLHttpRequest();
    var data = "username="+str;
    xmlhttp.open("POST", "../controller/check_form_data.php", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.onreadystatechange = function(){
      if(this.readyState == 4 && this.status == 200){
        var return_data = this.responseText;
        if(return_data == "usernameOK"){
          document.getElementById("username").className = "input is-success";
          notification.innerHTML = "Username is available";
          notification.className = "help is-success";
          document.getElementById("registersubmit").disabled = false;
          console.log(return_data);
        } else {
          document.getElementById("username").className = "input is-danger";
          notification.innerHTML = "Username is not available";
          notification.className = "help is-danger";
          document.getElementById("registersubmit").disabled = true;
          console.log(return_data);
        }
      }
    }
    xmlhttp.send(data);
  }
}

function checkemail(){
  var str = document.getElementById('email').value;
  var notification = document.getElementById("emailnotification");
  if (str.length == 0){
    document.getElementById("email").className = "input";
  } else {
    var xmlhttp = new XMLHttpRequest();
    var data = "email="+str;
    xmlhttp.open("POST", "../controller/check_form_data.php", true);
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    {
      if(this.readyState == 4 && this.status == 200){
        var return_data = this.responseText;
        if(return_data == "emailOK"){
          document.getElementById("email").className = "input is-success";
          notification.innerHTML = "Email is not in use";
          notification.className = "help is-success";
          document.getElementById("registersubmit").disabled = false;
          console.log(return_data);
        } else {
          document.getElementById("email").className = "input is-danger";
          notification.innerHTML = "Email is already in use";
          notification.className = "help is-danger";
          document.getElementById("registersubmit").disabled = true;
          console.log(return_data);
        }
      }
    }
    xmlhttp.send(data);
  }
}
