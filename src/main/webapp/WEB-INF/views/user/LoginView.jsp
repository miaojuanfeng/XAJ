<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="<c:url value="assets/bootstrap/css/bootstrap.min.css"></c:url>">
        <link rel="stylesheet" href="<c:url value="assets/font-awesome/css/font-awesome.min.css"></c:url>">
		<link rel="stylesheet" href="<c:url value="assets/css/form-elements.css"></c:url>">
        <link rel="stylesheet" href="<c:url value="assets/css/style.css"></c:url>">

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="<c:url value="assets/ico/favicon.png"></c:url>">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="assets/ico/apple-touch-icon-144-precomposed.png"></c:url>">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="assets/ico/apple-touch-icon-114-precomposed.png"></c:url>">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="assets/ico/apple-touch-icon-72-precomposed.png"></c:url>">
        <link rel="apple-touch-icon-precomposed" href="<c:url value="assets/ico/apple-touch-icon-57-precomposed.png"></c:url>">
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Bootstrap</strong> Login Form</h1>
                            <div class="description">
                            	<p>
	                            	This is a free responsive login form made with Bootstrap. 
	                            	Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-weixin"></i> 微信
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-qq"></i> QQ
	                        	</a>
	                        	<!-- a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a -->
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>