<!DOCTYPE html>
<html>

<!-- 
	 @author Mrudul Tora (0801IT191049)
	 @author Preetam Pratyush Pal (0801IT191059)
-->

<title>CookChef - Login</title>

<head>


    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
    
    <link rel="icon" type="image/x-icon"
	href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh0AD2r-cwoXE--HSypYTElKmTSLA5ljsU5Nm-6atGZ5rJcYJrMpi3itomljA2kOTEK5s&usqp=CAU">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />


    <style>

        body{
            margin:0;
            padding: 0;
            font-family: montserrat;
            background: linear-gradient(120deg,#2980b9,#8e44ad);
            height: 100vh;
            overflow: hidden;

        }


        .center{

            position:fixed;
            top:50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 400px;
            background: white;
            border-radius: 10px;
        }


        .center h1{
            text-align: center;
            padding:0 0 20px 0;
            border-bottom: 1px solid silver;
        }

        .center form{
            padding: 0 40px;
            box-sizing: border-box;
        }


        form .txt_field{
            position: relative;
            border-bottom: 2px solid #adadad;
            margin:30px 0;

        }


        .txt_field input{
            width:100%;
            padding:0 5px;
            height: 40px;
            font-size: 16px;
            border: none;
            background:none;
            outline: none;
        }

        .txt_field label{
            position:absolute;
            top:50%;
            left:5px;
            color: #adadad;
            transform: translateY(-50%);
            font: size 16px;
            pointer-events: none;
            transition: .5s;
        }


        .txt_field span::before{
            content: '';
            position: absolute;
            top: 40px;
            left:0;
            width: 0%;
            height: 2px;
            background:#2691d9;
            transition: .5s;
        }


        .txt_field input:focus ~ label,
        .txt_field input:valid ~ label{
            top: -5px;
            color:#2691d9;
        }

        .txt_field input:focus ~ span::before,
        .txt_field input:valid ~ span::before{
        width: 100%;

        }


        .pass{
            margin:-5px 0 20px 5px;
            color:#a6a6a6;
            cursor: pointer;
        }

        .pass:hover{
            text-decoration: underline;
        }


        input[type="submit"]
    {
        width:100%;
        height: 50px;
        border:1px solid;
        background:  linear-gradient(120deg,#2980b9,#8e44ad);
        border-radius:25px;
        font-size:18px;
        color:#e9f4fb;
        font-weight: 700;
        cursor: pointer;
        overflow: none;
    }


    input[type="submit"]:hover{
        border-color:#2691d9;
        transition: .5s;
    }

    .signup_link{
        margin:30px 0;
        text-align: center;
        font-size:16px;
        color:#666666;
    }


    .signup_link a{
        color:#2691d9;
        text-decoration: none;
    }


    .signup_link a:hover{
        text-decoration: underline;
    }

    .page-footer{
        position: fixed;
        bottom: 0;
    }

    </style>


</head>


<body>

<%
	if (request.getSession().getAttribute("username") != null) {
		response.sendRedirect("/Cook-chef2/recipe-list.jsp");
	}
	%>
   


    <main class="page">


        <div class="center">
            <h1>CookChef - Login</h1>
            <form action="LoginDetails" method="post">
                <div class="txt_field">
                    <input type="text" required name="username">
                    <label>Username</label>
                </div>

                <div class="txt_field">
                    <input type="password" required name="password">
                    <label>Password</label>
                </div>


                <div class="pass">Forgot Password?</div>
                <input type="submit" value="Login">

                <div class="signup_link">
                    Not a member? <a href="signup.jsp">Sign Up</a>
                </div>


            </form>
        </div>



    </main>


    <footer class="page-footer">
        <p>&copy; <span id="date"></span>
        <span class="footer-logo">
            Cook Chef</span> built by <a href="#">Mrudul Tora & Preetam Pal</a></p>
    </footer>
    
</body>

</html>



















