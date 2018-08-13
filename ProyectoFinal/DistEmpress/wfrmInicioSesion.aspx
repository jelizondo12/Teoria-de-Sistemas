<%@ Page EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="wfrmInicioSesion.aspx.cs" Inherits="DistEmpress.wfrmInicioSesion" %>

<%@ Register Src="wcuInicioSesion.ascx" TagName="wcuInicioSesion" TagPrefix="uc1" %>
<%@ Register Src="~/wcuiniciosesion.ascx" TagPrefix="uc2" TagName="wcuiniciosesion" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/login.css" rel="stylesheet" />
     <title>LOGIN</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />


    <style type="text/css">
        .auto-style8 {
            text-align: center;
            text-shadow: initial;
        }

        .auto-style11 {
            text-align: center;
            font-family: "Myanmar Text";
            font-size: 16px;
            color: #999999;
        }
    </style>
</head>
<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
<body>
    <form runat="server">
        <div>
            <uc2:wcuiniciosesion runat="server" ID="wcuiniciosesion" />
        </div>

        <%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
        <footer>
            <article>
            </article>
        </footer>
    </form>
</body>
</html>
