<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Register</title>
    <style>
        .item{margin:10px 0;}
        label{width:100px;display:inline-block;}
    </style>

    <script>
        function checkForm() {
            let name = document.getElementById("name").value.trim();
            let pwd = document.getElementById("pwd").value.trim();
            let email = document.getElementById("email").value.trim();
            let birth = document.getElementById("birth").value.trim();

            // 验证
            if(name === "") { alert("用户名不能为空！"); return false; }
            if(pwd === "" || pwd.length < 8) { alert("密码不能为空且长度≥8！"); return false; }
            if(email === "" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) { alert("邮箱格式不正确！"); return false; }
            if(!/^\d{4}-\d{2}-\d{2}$/.test(birth)) { alert("出生日期格式：yyyy-mm-dd！"); return false; }

            return true;
        }
    </script>
</head>
<body>
<h2>User Registration</h2>
<form action="register.jsp" method="post" onsubmit="return checkForm()">
    <div class="item">
        <label>Username:</label>
        <input type="text" id="name" name="username">
    </div>

    <div class="item">
        <label>Password:</label>
        <input type="password" id="pwd" name="pwd">
    </div>

    <div class="item">
        <label>Email:</label>
        <input type="text" id="email" name="email">
    </div>

    <div class="item">
        <label>Gender:</label>
        <input type="radio" name="gender" value="male"> Male
        <input type="radio" name="gender" value="female"> Female
    </div>

    <div class="item">
        <label>Birthday:</label>
        <input type="text" id="birth" name="birth" placeholder="yyyy-mm-dd">
    </div>

    <div class="item">
        <input type="submit" value="Register">
    </div>
</form>

<hr>
当前请求方式：<%= request.getMethod() %>
</body>
</html>