var LoginForm = document.getElementById("LoginForm");
var RegForm = document.getElementById("RegForm");
var Indicator = document.getElementById("Indicator");

function register() {
    RegForm.style.transform = "translateX(-450px)";
    LoginForm.style.transform = "translateX(-450px)";
    Indicator.style.transform = "translateX(100px)";

}

function login() {
    RegForm.style.transform = "translateX(0px)";
    LoginForm.style.transform = "translateX(0px)";
    Indicator.style.transform = "translateX(0px)";
}

function validate_login() {
    var name = document.getElementById("name");
    var pwd = document.getElementById("pwd");
    var username_error = document.getElementById("user_error");
    var pwd_error = document.getElementById("pwd_error");

    if (name.value.length <= 8 || name.value.length >= 20) {
        name.style.border = "1.5px solid red";
        username_error.innerHTML = "Tên đăng nhập phải chứa 8-20 ký tự";
        return false;
    } else {
        name.style.border = "2px solid green";
        username_error.innerHTML = "";
    }
    if (pwd.value.length <= 6 || pwd.value.length >= 20) {
        pwd.style.border = "1.5px solid red";
        pwd_error.innerHTML = "Mật khẩu phải chứa 6-20 ký tự";
        return false;
    }
}

function validate_reg() {
    var name_reg = document.getElementById("name_reg");
    var pwd_reg = document.getElementById("pwd_reg");
    var pwdAgain_reg = document.getElementById("pwdAgain_reg");
    var user_error_reg = document.getElementById("user_error_reg");
    var pwd_error_reg = document.getElementById("pwd_error_reg");
    var pwd2_error_reg = document.getElementById("pwd2_error_reg");


    if (name_reg.value.length <= 8 || name_reg.value.length >= 20) {
        name_reg.style.border = "1.5px solid red";
        user_error_reg.innerHTML = "Tên đăng nhập phải chứa 8-20 ký tự";
        return false;
    } else {
        name_reg.style.border = "2px solid green";
        user_error_reg.innerHTML = "";
    }

    if (pwd_reg.value.length <= 6 || pwd_reg.value.length >= 20) {
        pwd_reg.style.border = "1.5px solid red";
        pwd_error_reg.innerHTML = "Mật khẩu phải chứa 6-20 ký tự";
        return false;
    } else {
        pwd_reg.style.border = "2px solid green";
        pwd_error_reg.innerHTML = "";
    }
    if (pwdAgain_reg.value != pwd_reg.value) {
        pwdAgain_reg.style.border = "1.5px solid red";
        pwd2_error_reg.innerHTML = "Không trùng khớp với mật khẩu trên";
        return false;

    }
}