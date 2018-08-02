<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmIndex.aspx.cs" Inherits="DistEmpress.wfrmIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Pagina Principal</title>
    <link href="css/index.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
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
            height: 115px;
        }
        .auto-style5 {
            color: #CCCCCC;
            text-align: center;
        }
        .auto-style6 {
            width: 329px;
        }
        .auto-style7 {
            width: 329px;
            text-align: center;
            border-radius:15px;
            vertical-align:middle;
            position:center;

        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            color: #CCCCCC;
        }
        .auto-style10 {
            font-size: x-small;
            color: #CCCCCC;
        }
        .auto-style11 {
            width: 876px;
            height: 500px;
            border-radius:15px;
            border-color:#cccccc;
            border:solid;
            text-align:center;
            position:center;
            vertical-align:middle;
        }
        .auto-style12 {
            width: 345px;
            color: #CCCCCC;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
            width: 187px;
        }
        .auto-style15 {
            color: #CCCCCC;
            text-align: center;
            width: 187px;
        }
        .auto-style16 {
            width: 329px;
            height: 72px;
        }
        .auto-style17 {
            color: #CCCCCC;
            text-align: center;
            width: 187px;
            height: 72px;
        }
        .auto-style18 {
            color: #CCCCCC;
            text-align: center;
            height: 72px;
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
            position:center;
            vertical-align:middle;
            text-align:center;
        }
        .auto-style23 {
            width: 20px;
            height: 72px;
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
        .auto-style29 {
            color: #CCCCCC;
            text-align: center;
            height: 72px;
            width: 20px;
        }
        .auto-style30 {
            width: 329px;
            color: #CCCCCC;
            text-align: center;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
     <!-- CONTENEDOR -->
        <section id="contenedor">

            <!-- ENCABEZADO -->
            <header>
                <article class="logo">
                    <section id="logo" class="fadeIn">
                        <img src="imagenes/logo.PNG" alt="Logo Empresarial"/>
                    </section>
                </article>
            </header>

            <%-- menu --%>
            <blockquote id="menu">
                <nav id="primary_nav_wrap" class="auto-style156">
                    <ul class="auto-style157">
                        <%--menu1--%>
                        <li class="current-menu-item"><a href="wfrmIndex.aspx">Inicio</a></li>
                        <%--menu 2--%>
                        <li id="Admin" runat="server"><a href="#">Administrador</a>
                            <ul>
                                <li><a href="wfrmRegistroUsuario.aspx"><asp:Image ID="Image10" runat="server" ImageUrl="~/imagenes/user.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Usuario</a></li>
                                <li><a href="wfrmIngresoProducto.aspx"><asp:Image ID="Image66" runat="server" ImageUrl="~/imagenes/comestibles.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Producto</a></li>
                                <li><a href="wfrmIngresoPedido.aspx"><asp:Image ID="Image67" runat="server" ImageUrl="~/imagenes/e-commerce.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Pedido</a></li>
                                <li><a href="wfrmConsultas.aspx"><asp:Image ID="Image11" runat="server" ImageUrl="~/imagenes/report.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Reportes</a></li>
                                <li><a href="wfrmIndex.aspx"><asp:Image ID="Image68" runat="server" ImageUrl="~/imagenes/exit.png"  Height="32" ImageAlign="AbsMiddle" Width="32" />Salir</a></li>

                                    </ul>
                                </li>
                        <%-- Menu 3 --%>
                        <li id="Ventas" runat="server"><a href="#">Vendedor</a>
                            <ul>
                                <li><a href="wfrmIngresoProducto.aspx"><asp:Image ID="Image5" runat="server" ImageUrl="~/imagenes/comestibles.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Producto</a></li>
                                <li><a href="wfrmIngresoPedido.aspx"><asp:Image ID="Image6" runat="server" ImageUrl="~/imagenes/e-commerce.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Pedido</a></li>
                                <li><a href="wfrmIndex.aspx"><asp:Image ID="Image7" runat="server" ImageUrl="~/imagenes/exit.png"  Height="32" ImageAlign="AbsMiddle" Width="32" />Salir</a></li>
                                    </ul>
                                </li>
                        <%-- menu 4 --%>
                        <li id="Compras" runat="server"><a href="#">Inventario</a>
                            <ul>                              
                                <li><a href="wfrmConsultas.aspx"><asp:Image ID="Image8" runat="server" ImageUrl="~/imagenes/report.png" Height="32" ImageAlign="AbsMiddle" Width="32" />Reportes</a></li>                                
                                <li><a href="wfrmIndex.aspx"><asp:Image ID="Image9" runat="server" ImageUrl="~/imagenes/exit.png"  Height="32" ImageAlign="AbsMiddle" Width="32" />Salir</a></li>
                                    </ul>
                        </li>
                        <%-- menu 5 --%>
                        <li><a href="#">Salir</a>
                            <ul>
                                <li><a href="wfrmInicioSesion.aspx"><asp:Image ID="Image65" runat="server" Height="32px" ImageAlign="AbsMiddle" ImageUrl="~/imagenes/exit.png" Width="32px" />
                                    &nbsp;Cerrar Sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </blockquote>
            
            <%-- cuerpo --%>
             <br />
            <br />
            <div>
                <blockquote id="cuerpo">
                    <table align="center" class="auto-style11" style="border-style: solid; border-color: #CCCCCC">
                        <tr>
                            <td class="auto-style24">
                                &nbsp;</td>
                            <td class="auto-style7">
                                &nbsp;</td>
                            <td class="auto-style14">
                                &nbsp;</td>
                            <td class="auto-style8">
                                &nbsp;</td>
                            <td class="auto-style24">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">
                                &nbsp;</td>
                            <td class="auto-style7">
                             <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/2.png" Height="200px" Width="241px" CssClass="auto-style7" />
                            </td>
                            <td class="auto-style14">
                                &nbsp;</td>
                            <td class="auto-style8">
                           <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/1.png" Height="200px" Width="241px" CssClass="auto-style7" />
                            </td>
                            <td class="auto-style24">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                &nbsp;</td>
                            <td class="auto-style6">
                            <h3 class="auto-style5">Visión</h3></td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style5">
                            <h3 class="auto-style9">Misión</h3></td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                &nbsp;</td>
                            <td class="auto-style6">
                                &nbsp;</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                &nbsp;</td>
                            <td class="auto-style6">
                            <p class="auto-style4"><span class="auto-style2">Es ser la empresa líder en distribución de alimentos a nivel nacional, con productos  de calidad y precios competitivos.</span> </p>
                            </td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style5">
                            <p class="auto-style1"><span class="auto-style10">Darle a nuestros clientes la mejor calidad en productos, presentación e higienes del más alto nivel; brindando un excelente servicio cumpliendo con los tiempos de entrega y disponibilidad del producto.</span><span class="auto-style9"> </span> </p>
                            </td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                </td>
                            <td class="auto-style16">
                            </td>
                            <td class="auto-style17">
                            </td>
                            <td class="auto-style18">
                            </td>
                            <td class="auto-style29">
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style24">
                                &nbsp;</td>
                            <td class="auto-style7">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/imagenes/3.png" Height="200px" Width="241px" CssClass="auto-style7" ImageAlign="AbsMiddle" />
                            </td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style5">
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/imagenes/9.png" Height="200px" Width="241px" CssClass="auto-style7" />
                            </td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style25">
                                &nbsp;</td>
                            <td class="auto-style30">
                            <h3 class="auto-style9">Calidad </h3></td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td class="auto-style5">
                            <h3>Servicio</h3></td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style26">&nbsp;<td class="auto-style30">&nbsp;<td class="auto-style12">&nbsp;</td>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style26">&nbsp;<td class="auto-style30">100% calidad<td class="auto-style12">&nbsp;</td>&nbsp;</td>
                            <td class="auto-style5">
                            <p class="auto-style19">Brindando servicios desde el año 2000, con la iniciativa de ser una empresa nacional y ganar terreno en el país. </p>
                            </td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style26">&nbsp;<td class="auto-style20">&nbsp;<td class="auto-style12">
                            &nbsp;</td>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td class="auto-style25">
                                &nbsp;</td>
                        </tr>
                    </table>
                </blockquote>
                <!-- PIE DE PAGINA -->
                <!--#include virtual="/menu/footer.txt" -->
            </div>
        </section>
    </form>
</body>
</html>