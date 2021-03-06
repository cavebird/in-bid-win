<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/css/login.css">
        <link rel="icon" type="image/png" sizes="16x16" href="https://i.ibb.co/kXB6NYF/favicon.png">
        <title>Welcome</title>
    </head>
    <body class="login">
        <div class="container">
            <div class="login-container-wrapper clearfix">
                <ul class="switcher clearfix">
                    <li class="first logo active" data-tab="login">
                        <a>Login</a>
                    </li>
                    <li class="second logo" data-tab="sign_up">
                        <a>Sign Up</a>
                    </li>
                </ul>
                <c:if test="${param.error !=null}">
                    <div class="alert alert-danger">
                        <i>Invalid username/password</i>
                    </div>
                </c:if>
                <c:if test="${param.logout !=null}">
                    <div class="alert alert-success">
                        <i>Logged out successfully</i>
                    </div>
                </c:if>
                <div class="tab-content">
                    <div class="tab-pane active" id="login">
                        <f:form cssClass="form-horizontal login-form" action="${pageContext.request.contextPath}/authenticate" method="POST">
                            <div class="form-group relative">
                                <input name="username" type="text" class="form-control input-lg" placeholder="Username" required="required">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="form-group relative">
                                <input name="password" class="form-control input-lg" id="login_password" placeholder="Password" required="required"
                                       type="password"> <i class="fa fa-lock"></i>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Login</button>
                            </div>
                            <div class="checkbox checkbox-success">
                                <input id="stay-sign" type="checkbox">
                                <label for="stay-sign">Stay signed in</label>
                            </div>
                            <hr />
                            <div class="text-center">
                                <label><a href="#">Forgot your password?</a></label>
                            </div>
                        </f:form>
                    </div>
                    <div class="tab-pane" id="sign_up">
                        <form class="form-horizontal login-form" action="${pageContext.request.contextPath}/user/create">
<!--                            <div class="form-group relative">
                                <input class="form-control input-lg" id="login_username" placeholder="E-mail Address"
                                       required="" type="email"> <i class="fa fa-user"></i>
                            </div>
                            <div class="form-group relative">
                                <input class="form-control input-lg" id="l_password" placeholder="Password" required=""
                                       type="password"> <i class="fa fa-lock"></i>
                            </div>
                            <div class="form-group relative">
                                <input class="form-control input-lg" id="lo_password" placeholder="Repeat Password"
                                       required="" type="password"> <i class="fa fa-lock"></i>
                            </div>-->
                            <div class="form-group">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Sign Up</button>
                            </div>
                            <div class="checkbox checkbox-success">
                                <input id="agree-terms" type="checkbox">
                                <label for="agree-terms"> Agree our terms</label>
                            </div>
                            <hr>
                            <div class="text-center">
                                <label><a href="#">Already Member?</a></label>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="/js/login.js"></script>
    </body>
</html>