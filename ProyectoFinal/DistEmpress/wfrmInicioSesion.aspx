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
                        <img src="imagenes/logo.PNG" alt="Logo Empresarial" style="text-align: center"/>
                    </section>
                </article>
            </header>
            <div>
                <uc1:wcuInicioSesion ID="wcuIniciosesion" runat="server" />
            </div>
            <%--Pie de pagina--%>

            <!--#include virtual="/menu/footer.txt" -->

        </section>
    </form>
</body>
</html>
