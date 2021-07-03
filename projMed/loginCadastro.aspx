<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginCadastro.aspx.cs" Inherits="preview_dotnet_templates_the_big_picture_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="full" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="aspxtemplates">
    <title>The Big Picture - Start Bootstrap Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet">
    <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Akshara</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.aspx">Home</a> </li>
                    <li><a href="#products">Products</a> </li>
                    <li><a href="#about-us">About Us</a> </li>
                    <li><a href="#contact">Contact Us</a> </li>
                    <li>
                        <li class="active"><a class="active" href="login.aspx">Login</a> </li>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Login -->
<%--    <div class="container">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">
            <div class="registrationform">
                <form role="form " action="" method="">
                <h1 class="text-left">
                    Log in to your app</h1>
                <div class="form-group">
                    <label for="name">
                    </label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="user id"
                        required>
                    <!--placing icon using a span element-->
                    <span class="icon fa fa-user fa-lg"></span>
                </div>
                <div class="form-group">
                    <label for="email">
                    </label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="password"
                        required>
                    <span class="icon fa fa-unlock fa-lg"></span>
                </div>
                <div class="form-group text-left">
                    <button type="submit" class="btn btn-default">
                        Submit</button>
                    <a href="#forget-password" data-target="#pwdModal" data-toggle="modal">Forget password?</a>
                </div>
                </form>
            </div>
        </div>
    </div>--%>




        <div id="login" class="page-container">

    <div class="container">

        <ul class="nav nav-tabs hidden-md-up mt-3">
            <li class="nav-item">
                <a v-on:click="isRegistered = !isRegistered " v-bind:class="{ active: !isRegistered }"
                   class="nav-link">Quero me cadastrar</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" v-bind:class="{ active: isRegistered }" v-on:click="isRegistered = !isRegistered ">Já
                    tenho cadastro</a>
            </li>
        </ul>

        <div class="row login-container">
            <div class="col-sm-12 col-md-6">


                <h1 class="hidden-sm-down">
                    Quero me cadastrar
                </h1>

                <div v-if="((!isRegistered && !isScreenBig) || isScreenBig) && !isPatientRegister">
                    <h1 class="mobile-header hidden-md-up">
                        Selecione
                    </h1>
                    <div class="img-container">
                        <a v-on:click="isPatientRegister = !isPatientRegister">
                            <img src="img/paciente.png" alt="">
                            <p> SOU PACIENTE</p></a>
                        <a href="cadastroMedico.aspx"> <img src="img/medica.png" alt="">
                            <p> SOU MÉDICO</p></a>
                    </div>
                </div>



                <div v-show="((!isRegistered && !isScreenBig) || isScreenBig) && isPatientRegister"
                     class="patient-container">
                    <a v-on:click="isPatientRegister = !isPatientRegister" class="btn-back"><i class="material-icons">keyboard_arrow_left</i>
                        VOLTAR </a>
                    <p>Coloque seu celular para receber sua senha de acesso:</p>

                    <form action="entrar/cadastro-paciente" method="post" id="registerForm">
                        <div class="input-group">
                            <div class="input-group-addon"><i class="material-icons">phone_iphone</i></div>
                            <input name="cellphone" v-model="cellphone"
                                   type="text" class="form-control" placeholder="Celular">
                        </div>

<%--                        <input type="hidden" name="client_id"
                               value="00c12112ea30c325d9c818dcead9b1f4b21e8a92503a120000c660cd6e583f33">--%>

                        <hr class=" mt-4 mb-4 ">
                        <button :disabled="!isNumberFilled" type="submit"
                                class="btn btn-primary  btn-block ">
                            Entrar
                        </button>
                    </form>
                </div>

            </div>


            <div v-if="(isRegistered && !isScreenBig) || isScreenBig" class="col-sm-12 col-md-6 sign-in-container">

                <h1 class="hidden-sm-down mb-5">
                    Já tenho cadastro
                </h1>
                
                <form action="entrar" method="post" id="loginForm">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="material-icons">person</i></div>

                        <input type="text" class="form-control" placeholder="Seu nome" v-model="uid" name="email">

                    </div>

                    <div class="password-container">
                        <div class="input-group mt-4">
                            <div class="input-group-addon"><i class="material-icons">lock</i></div>

                            <input v-model="password" type="password" class="form-control" placeholder="Senha"
                                   name="password">

                        </div>

                    </div>
                    <div class="forgot-psswrd-wrapper">
                        <a data-toggle="modal" data-target="#password" class="forgot-psswrd"> Esqueceu a senha?</a>
                    </div>



                    <hr class="mt-4 mb-4">

                    <div class="alert alert-danger" role="alert" v-if="isUnauthorized">
                        Email ou senha inválidos!
                    </div>

                    <button :disabled="!password || !uid" type="submit"
                            class="btn btn-primary  btn-block "> Entrar
                    </button>

                </form>
            </div>

        </div>
    </div>












    <!--modal-->
    <div id="pwdModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header brick">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        X</button>
                    <h3 class="text-center">
                        Forget password?</h3>
                </div>
                <div class="modal-body">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="text-center">
                                    <p>
                                        If you have forgotten your password you can reset it here.</p>
                                    <div class="panel-body">
                                        <fieldset>
                                            <div class="form-group">
                                                <input class="form-control input-lg" placeholder="E-mail Address" name="email" type="email">
                                            </div>
                                            <input class="btn btn-lg btn-danger btn-block" value="Send My Password" type="submit">
                                        </fieldset>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix">
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="js/retina.min.js" type="text/javascript"></script>
    <script src="js/modernizr.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    </form>
</body>
</html>
