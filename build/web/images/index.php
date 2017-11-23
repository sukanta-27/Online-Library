<?php
include("Login.php");
?>
<html>
<head>
<title>WebLibrary - SG</title>
<link href="MyStyle.css" rel="stylesheet" type="text/css"/>
<link href="Book.ico" rel="shortcut icon"/>
</head>

<body style="background-image:url(Back_Index.jpg);background-repeat:no-repeat;background-size:100%;">
<br><br><br>
<div class="login">
	<h2 align="center" style="height:25%;"><b class="avatar"><img src="Key-512.png"></b></h2>
    <div>
    <form action="" method="post">
    <br><label>Email-ID</label><br>
    <input type="text" placeholder="abc@xyz.com" autofocus required name="email"><br>
    <br><label>Password</label><br>
    <input type="password" placeholder="Password" autofocus required name="pwd"><br>
    </div>
	<div>
	<h4 align=center><font color=yellow><?php echo $error; ?></font></h4>
	</div>
    <div>
    <input type="submit" value="Sign in" name="submit" style="float:right;line-height:30px;">
    </div>
    </form>
	<a href="SignUp.php"><font face="Comic Sans MS">Register Me</font></a>
</div>
<br><br>
<h4 align=center style="background:black;padding:5pt;opacity:0.5;border-radius:10pt;"><font color=pink>
Online Library<br>Developed By: Suman Ghosh - Aptech Hazra.</font>
</h4>
</body>
</html>
