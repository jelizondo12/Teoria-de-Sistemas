<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmIndex.aspx.cs" Inherits="DistEmpress.wfrmIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pagina Principal</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="css/index.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/main.js"></script>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 307px;
        }

        .auto-style2 {
            font-size: x-small;
        }

        .auto-style4 {
            width: 315px;
            color: #CCCCCC;
            text-align: center;
            height: 55px;
        }

        .auto-style5 {
            color: black;
            text-align: center;
        }

        .auto-style6 {
            width: 329px;
        }

        .auto-style7 {
            width: 329px;
            text-align: center;
            border-radius: 15px;
            vertical-align: middle;
            position: center;
        }

        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            color: black;
        }

        .auto-style10 {
            font-size: x-small;
            color: black;
        }

        .auto-style14 {
            text-align: center;
            width: 105px;
        }

        .auto-style15 {
            color: #CCCCCC;
            text-align: center;
            width: 105px;
        }

        .auto-style19 {
            font-size: x-small;
            width: 311px;
        }

        .auto-style20 {
            color: #CCCCCC;
            text-align: justify;
            width: 329px;
        }

        .auto-style22 {
            width: 20px;
            position: center;
            vertical-align: middle;
            text-align: center;
        }

        .auto-style24 {
            text-align: center;
            width: 20px;
        }

        .auto-style25 {
            color: #CCCCCC;
            text-align: center;
            width: 20px;
        }

        .auto-style26 {
            color: #CCCCCC;
            text-align: justify;
            width: 20px;
        }

        .auto-style30 {
            width: 329px;
            color: black;
            text-align: center;
        }
    </style>
</head>

<body>
    <form  id="form1" runat="server">
      <section id="contenedor">
        <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu">Menú</a>
            </div>
           <nav class="auto-style8">
                <ul>
                    <li><a href="wfrmIndex.aspx">Inicio</a></li>
                    <li id="usuario" runat="server">
                        <a href="#">Usuario</a>
                        <ul class="children">
                            <li><a href="wfrmRegistroUsuario.aspx">Registro de Usuarios</a></li>
                            <li><a href="wfrmRecuperacion_Clave.aspx">Recuperación Contraseña</a></li>
                        </ul>
                    </li>
                    <li id="ingresoProducto" runat="server"><a href="wfrmIngresoProducto.aspx">Producto</a></li>
                    <li id="ingresoPedido" runat="server"><a href="wfrmIngresoPedido.aspx">Pedidos</a></li>
                    <li id="consultas" runat="server"><a href="wfrmConsultas.aspx">Reportes</a></li>
                    <li><a href="wfrmInicioSesion.aspx">Cerrar Sesión</a></li>
                </ul>
            </nav>
        </header>
 
            <table class="cuerpo" style="border-color:black">
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/2.png" Height="200px" Width="241px" CssClass="auto-style7" /></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/1.png" Height="200px" Width="241px" CssClass="auto-style7" /></td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style6 ">
                        <h3 class="auto-style5 auto-style9">Visión</h3>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">
                        <h3 class="auto-style9">Misión</h3>
                    </td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style6">
                        <p class="auto-style4"><span class="auto-style2 auto-style9">Es ser la empresa líder en distribución de alimentos a nivel nacional, con productos  de calidad y precios competitivos.</span> </p>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">
                        <p class="auto-style1"><span class="auto-style10">Darle a nuestros clientes la mejor calidad en productos, presentación e higienes del más alto nivel; brindando un excelente servicio cumpliendo con los tiempos de entrega y disponibilidad del producto.</span><span class="auto-style9"> </span></p>
                    </td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/imagenes/3.png" Height="200px" Width="241px" CssClass="auto-style7" ImageAlign="AbsMiddle" /></td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/imagenes/9.png" Height="200px" Width="241px" CssClass="auto-style7" /></td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style30">
                        <h3>Calidad </h3>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">
                        <h3>Servicio</h3>
                    </td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style30 auto-style9">100% calidad </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">
                        <p class="auto-style19">Brindando servicios desde el año 2000, con la iniciativa de ser una empresa nacional y ganar terreno en el país. </p>
                    </td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
            </table>
        <div class="footer">
            <!--#include virtual="/menu/footer.txt" -->
        </div>
     </section>
    </form>
</body>
</html>
