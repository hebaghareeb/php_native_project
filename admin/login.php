<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Furniture Admin | Login/Register</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
<?php
include("../database.php");
$d_b = new DB();
$d_b->get_connection();
$errors = [];
if(isset($_POST['login']))
{
	$uname = $_POST['uname'];
	$pass = $_POST['pass'];
  $data = $d_b->select("*","users","uname='$uname'");
  $u = $data->fetch(PDO::FETCH_ASSOC);
  if(($u == true))
  {
        if($u['pass']== $pass)
        {
           $_SESSION['fname'] = $u['fname'];
           $_SESSION['image'] = $u['image'];
           $_SESSION['admin'] = $u['active'];//if active =1 (admin);
           header("location:../index.php");

        }
    else $errors['pass'] = 'invalid password';
  }
  else $errors['uname'] = 'invalid user name';
}


if(isset($_POST['submit']))
{
  $fname = $_POST['fname'];
	$uname = $_POST['uname'];
	$email = $_POST['email'];
	$pass = $_POST['pass'];
  
$upper = preg_match('@[A-Z]@', $pass);
$lower = preg_match('@[a-z]@', $pass);
$number    = preg_match('@[0-9]@', $pass);
$special = preg_match('@[^\w]@', $pass);
  
  $data = $d_b->select("uname","users","uname='$uname'");
  $chech_uname = $data->fetchAll(PDO::FETCH_CLASS);
  $u_n = array_column($chech_uname,'uname');
  if(count($u_n) != 0)
  {
    $errors['uname'] = "the name is alreay exist choose another one";
  }
  else if (!$upper || !$lower || !$number || !$special || strlen($pass) < 8)
  {
    $errors['pass'] =  "Password not less than 8 char(contains)upper letter/ a number/ special character";
  }
  else 
  {
	$d_b->insert("users","fname,uname,email,pass","'$fname','$uname','$email','$pass'");
  $_SESSION['fname']= $fname ;
 header("location:../index.php");
  }
}

?>

    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          <form method = "POST" action = "<?php $_SERVER['PHP_SELF']; ?>">
              <h1>Login Form</h1>
              <div>
              <span><font color= 'red'><?php if(isset($errors['uname'])) echo $errors['uname'];?></font></span>
                <input type="text" name ="uname" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" name = "pass" class="form-control" placeholder="Password" required="" />
              <span><font color= 'red'><?php if(isset($errors['pass'])) echo $errors['pass'];?></font></span>
              </div>
              <div>
                <input type="submit"  class="btn btn-default submit" value ="Log in"  name = "login" >
                <a class="reset_pass" href="../index">Lost your password?</a>
              </div>


              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Furniture Admin</h1>
                  <p>©2016 All Rights Reserved. Furniture Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">


          <form method = "POST" action = "<?php $_SERVER['PHP_SELF']; ?>">
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" value = "<?php if(isset($errors['uname'])|| isset($errors['pass'])) echo $_POST['fname'];?>" name = "fname" placeholder="Fullname" required="" />
              </div>
              <div>
              <font color= 'red'><?php if(isset($errors['uname'])) echo $errors['uname'];?></font>
              <input type="text" class="form-control" value = "<?php if(isset($errors['uname'])|| isset($errors['pass'])) echo $_POST['uname'];?>" name = "uname" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" value = "<?php if(isset($errors['uname'])|| isset($errors['pass']))  echo $_POST['email'];?>" name = "email" placeholder="Email" required="" />
              </div>
              <div>
              <font color= 'red'><?php if(isset($errors['pass'])) echo $errors['pass'];?></font>
                <input type="password" class="form-control" value = "<?php if(isset($errors['uname'])|| isset($errors['pass'])) echo $_POST['pass'];?>" name = "pass" placeholder="Password" required="" />
              </div>
              <div>
                <input  type="submit" class="btn btn-default submit" name = "submit"  value="Submit" />
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Furniture Admin</h1>
                  <p>©2016 All Rights Reserved. Furniture Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
