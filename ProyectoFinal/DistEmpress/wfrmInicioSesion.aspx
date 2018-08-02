<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmInicioSesion.aspx.cs" Inherits="DistEmpress.wfrmInicioSesion" %>

<%@ Register Src="wcuInicioSesion.ascx" TagName="wcuInicioSesion" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio Sesión</title>
    <link href="css/InicioSesion.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            font-size: large;
            width: 1178px;
            text-align: center;
        }
    </style>
</head>

<%-- cuerpo --%>
<body>
    <form id="form1" runat="server">
        <%-- contenerdor --%>
        <section id="contenedor">

            <%--encabezdo--%>
            <header>
                <article class="logo">
                    <section id="logo" class="fadeIn">
                        <img src="imagenes/logo.PNG" alt="Logo Empresarial" style="text-align: center">
                    </section>
                </article>
            </header>

            <div>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <div>
                <uc1:wcuInicioSesion ID="wcuIniciosesion" runat="server" />
            </div>
            <%--Pie de pagina--%>
    <footer id="pie">
        <article>
            <br />
            <br />
            <br />
            <h1 class="auto-style13">Programación IV- III Cuatrimestre UAM &COPY 2017</h1>
            <h2 class="auto-style9">Proyecto Final</h2>
        </article>
    </footer>
        </section>
    </form>
</body>
</html>
