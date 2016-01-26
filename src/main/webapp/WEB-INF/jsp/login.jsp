<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="inc/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta name="format-detection" content="telephone=no">
        <meta charset="UTF-8">
        <meta name="description" content="Violate Responsive Admin Template">
        <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">
        <title>Super Admin Responsive Template</title>
        <!-- CSS -->
        <link href="${contextPath }/static/html/css/bootstrap.min.css" rel="stylesheet">
        <link href="${contextPath }/static/html/css/form.css" rel="stylesheet">
        <link href="${contextPath }/static/html/css/style.css" rel="stylesheet">
        <link href="${contextPath }/static/html/css/animate.css" rel="stylesheet">
        <link href="${contextPath }/static/html/css/generics.css" rel="stylesheet"> 
    </head>
    <body id="skin-blur-violate">
        <section id="login">
            <header>
                <h1>SUPER ADMIN</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>
            </header>
            <div class="clearfix"></div>
            <!-- Login -->
            <form class="box tile animated active" action="admin/login/check" id="box-login">
                <h2 class="m-t-0 m-b-15">Login</h2>
                <input type="text" class="login-control m-b-10" id="username" name="username" placeholder="Username or Email Address">
                <input type="password" class="login-control" id="password" name="password" placeholder="Password">
                <div class="checkbox m-b-20">
                    <label>
                        <input type="checkbox">
                                                                                   记住我
                    </label>
                </div>
                <button class="btn btn-sm m-r-5">Sign In</button>
                
                <small>
                    <a class="box-switcher" data-switch="box-register" href="">Don't have an Account?</a> or
                    <a class="box-switcher" data-switch="box-reset" href="">Forgot Password?</a>
                </small>
            </form>
            
            <!-- Register -->
            <form class="box animated tile" id="box-register">
                <h2 class="m-t-0 m-b-15">Register</h2>
                <input type="text" class="login-control m-b-10" placeholder="Full Name">
                <input type="text" class="login-control m-b-10" placeholder="Username">
                <input type="email" class="login-control m-b-10" placeholder="Email Address">    
                <input type="password" class="login-control m-b-10" placeholder="Password">
                <input type="password" class="login-control m-b-20" placeholder="Confirm Password">

                <button class="btn btn-sm m-r-5">Register</button>

                <small><a class="box-switcher" data-switch="box-login" href="">Already have an Account?</a></small>
            </form>
            
            <!-- Forgot Password -->
            <form class="box animated tile" id="box-reset">
                <h2 class="m-t-0 m-b-15">Reset Password</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>
                <input type="email" class="login-control m-b-20" placeholder="Email Address">    
                <button class="btn btn-sm m-r-5">Reset Password</button>
                <small><a class="box-switcher" data-switch="box-login" href="">Already have an Account?</a></small>
            </form>
        </section>                      
        
        <!-- Javascript Libraries -->
        <!-- jQuery -->
        <script src="${contextPath }/static/html/js/jquery.min.js"></script> <!-- jQuery Library -->
        <!-- Bootstrap -->
        <script src="${contextPath }/static/html/js/bootstrap.min.js"></script>
        <!--  Form Related -->
        <script src="${contextPath }/static/html/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
        <!-- All JS functions -->
        <script src="${contextPath }/static/html/js/functions.js"></script>
        
        
    </body>
</html>
