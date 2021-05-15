<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Banking System</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        .bg-image {
            /* The image used */
            background-image: url("http://localhost:53053/bimg.jpg");
            /* Add the blur effect */
            filter: blur(2px);
            /* Full height */
            height: 100%;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: 98% 100%;
        }

        /* Position text in the middle of the page/image */
        .bg-text {
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
            color: white;
            font-weight: bold;
            border: 3px solid #f1f1f1;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 80%;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>


    <div class="bg-image"></div>

    <div class="bg-text">
        <h1>Welcome to Banking System</h1>
        <h2>To see the list of Customers <a href="Customers.aspx">click here.</a></h2>
        <p>And Transfer Money in seconds.</p>
    </div>

</body>
</html>
