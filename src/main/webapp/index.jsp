<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 14/10/2021
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>

<style>

    * { box-sizing:border-box; }

    body {
        background: #eee;
        -webkit-font-smoothing: antialiased;
    }

    hgroup {
        text-align:center;
        margin-top: 4em;
    }

    span {
        font-size: 0.95em;
        font-weight: 600;
        letter-spacing: 0.3em;
        line-height: 24px;
        text-transform: uppercase;
    }

    /*------------------------------------------------------------------
    [ Login Form ]*/

    .log-form {
        width: 500px;
        margin: 4em auto;
        padding: 3em 2em 2em 2em;
        background: #fafafa;
        border: 1px solid #ebebeb;
        box-shadow: rgba(0,0,0,0.14902) 0px 1px 1px 0px,rgba(0,0,0,0.09804) 0px 1px 2px 0px;
    }

    .group {
        position: relative;
        margin-bottom: 45px;
    }

    .log-input {
        font-size: 18px;
        padding: 10px 10px 10px 5px;
        -webkit-appearance: none;
        display: block;
        background: #fafafa;
        color: #636363;
        width: 100%;
        border: none;
        border-radius: 0;
        border-bottom: 1px solid #757575;
    }

    .log-input:focus { outline: none; }

    .log-form a {
        font-size: 9px;
        font-weight: 600;
        letter-spacing: 0.3em;
        line-height: 24px;
        text-transform: uppercase;
        color: #aaaaaa;
    }

    .left-align {
        float: left;
        text-align: left;
    }

    .right-align {
        float: right;
        text-align: right;
    }


    /*------------------------------------------------------------------
    [ Button same code as contact form ]*/

    .container-log-btn {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        padding-top: 50px;
    }

    .log-form-btn {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-box;
        display: -ms-flexbox;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 20px;
        min-width: 250px;
        height: 50px;
        background-color: transparent;
        border-radius:7px;
        cursor: pointer;

        font-size: 16px;
        color: #000;
        line-height: 1.2;
        text-transform: uppercase;

        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        transition: all 0.4s;
        position: relative;
        z-index: 1;
    }

    .log-form-btn::before {
        content: "";
        display: block;
        position: absolute;
        z-index: -1;
        width: 100%;
        height: 100%;
        top: 0;
        left: 50%;
        -webkit-transform: translateX(-50%);
        -moz-transform: translateX(-50%);
        -ms-transform: translateX(-50%);
        -o-transform: translateX(-50%);
        transform: translateX(-50%);
        border-radius: 7px;
        background-color: #9e8c7b;
        pointer-events: none;

        -webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        transition: all 0.4s;
    }

    .log-form-btn:hover:before {
        background-color: #916439;
    }

    input[type="text"], input[type="email"], input[type="password"], textarea, select {
        background: transparent;
        border: none;
        font-family: "Montserrat";
        font-size: 12px;
        font-weight: 400;
        letter-spacing: 0.2em;
        line-height: 24px;
        height: 42px;
        padding-left: 20px;
        padding-right: 20px;
        text-transform: none;
        width: 100%;
    }

    input[type="checkbox"]:not(:checked) + label, input[type="checkbox"]:checked + label {
        color: #aaaaaa;
        cursor: pointer;
        font-size: 9px;
        font-weight: 600;
        letter-spacing: 0.3em;
        padding-left: 10px;
        padding-top: 6px;
        position: relative;
        text-transform: uppercase;
    }


</style>
<body>
<section>

    <hgroup>
        <h2>Welcome back!</h2>
        <p>Please enter your details to sign into your account</p>
    </hgroup>

    <form autocomplete="off" action="/login" method = "post" class = "log-form">

        <div class="group log-input">
            <input type="text" id = "username" name = "email" placeholder = "Username">
        </div>

        <div class="group log-input">
            <input type="password" id = "password" name = "password"  placeholder = "Password">
        </div>



        <a class = "right-align" href="#">Forgot Password</a>

        <br><br>

        <div class="container-log-btn">
            <button type="submit" name = "btn_submit" class="log-form-btn">
                <span>Login</span>
            </button>
        </div>

    </form>



</section>

</body>
</html>
