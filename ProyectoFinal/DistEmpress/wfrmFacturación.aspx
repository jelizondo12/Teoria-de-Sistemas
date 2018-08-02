﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmFacturación.aspx.cs" Inherits="DistEmpress.wfrmFacturación" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Facturación</title>
    <link href="css/Facturas.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            overflow: auto;
            height: 216px;
            width: 1090px;
            text-align: center;
        }

        .auto-style4 {
            margin-left: 0px;
        }

        .auto-style5 {
            width: 203px;
        }

        .auto-style10 {
            height: 43px;
            text-align: center;
        }

        .auto-style11 {
            text-align: center;
        }

        .auto-style12 {
            color: #0000FF;
        }

        .auto-style13 {
            text-decoration: underline;
        }

        .auto-style14 {
            height: 52px;
        }

        .auto-style15 {
            width: 203px;
            height: 52px;
        }

        .auto-style16 {
            font-size: xx-small;
        }

        .auto-style17 {
            font-size: xx-small;
            height: 893px;
        }

        .auto-style18 {
            height: 593px;
        }

        .auto-style19 {
            font-size: x-small;
        }

        .auto-style20 {
            width: 427px;
        }
        .auto-style21 {
            height: 13px;
        }
        .auto-style22 {
            width: 203px;
            height: 13px;
        }
        .auto-style23 {
            font-size: medium;
        }
        .auto-style24 {
            font-size: large;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <section id="contenedor" class="auto-style17">
            <%--encabezdo--%>
            <header>
                <article class="logo">
                    <section id="logo" class="fadeIn">
                        <img src="imagenes/logo.PNG" alt="Logo Empresarial" style="text-align: center">
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

            <%--Cuerpo--%>
            <br />
            <br />
            <br />
            <br />
            <div>
                <section id="cuerpo" class="auto-style18"><br />
                    <h1>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/invoice.png" Height="50px" ImageAlign="Middle" Width="50px" />&nbsp;&nbsp;&nbsp; Facturación de pedidos</h1>
                    <br />
                    &nbsp;&nbsp;<span class="auto-style24">&nbsp;<asp:Label ID="Label4" runat="server" Text="Numero de factura:"></asp:Label>
                    </span>&nbsp;&nbsp; &nbsp;<asp:Label ID="lbl_NumeroFactura" runat="server" Text="" CssClass="auto-style23"></asp:Label><br />
                    <br />
                    <div id="divGrid" style="border-style: solid none solid none; border-color: #CCCCCC;" class="auto-style1">
                        <asp:GridView ID="dgv_carrito" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1063px" Height="218px" HorizontalAlign="Left" CssClass="auto-style23">
                            <AlternatingRowStyle VerticalAlign="Middle" />
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </div>
                    <br />
                    <table id="tabla" align="right" class="auto-style20">
                        <tr class="auto-style23">
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Sub-total:"></asp:Label></td>
                            <td class="auto-style5">
                                <asp:Label ID="lbl_sub_total" runat="server" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr class="auto-style23">
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Impuesto de ventas(13%):"></asp:Label></td>
                            <td class="auto-style5">
                                <asp:Label ID="lbl_impuestoventas" runat="server" CssClass="auto-style13"></asp:Label></td>
                        </tr>
                        <tr class="auto-style23">
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Total:"></asp:Label></td>
                            <td class="auto-style5">
                                <asp:Label ID="lbl_total" runat="server" CssClass="auto-style13"></asp:Label></td>
                        </tr>

                        <tr>
                            <td style="text-align: center" class="auto-style21">
                                </td>
                            <td style="text-align: center" class="auto-style22">
                                </td>
                        </tr>

                        <tr>
                            <td style="text-align: center" class="auto-style14">
                                &nbsp;</td>
                            <td style="text-align: center" class="auto-style15">
                                <asp:ImageButton ID="ib_agregar" runat="server" ImageUrl="~/imagenes/icono registrar.png" CssClass="auto-style4" OnClick="ib_agregar_Click" CausesValidation="true" ValidationGroup="Modificar_Registrar" /></td>
                        </tr>

                        <tr>
                            <td style="text-align: center" class="auto-style21">
                                </td>
                            <td style="text-align: center" class="auto-style22">
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style10">
                                <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style12"></asp:Label>
                                <br />
                                <div class="auto-style11">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style6" ForeColor="Red" Width="344px" ValidationGroup="Modificar_Registrar" Height="41px" Style="font-size: x-small" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    <br />
                </section>
            </div>
        </section>
        <%-- pie de página --%>
        <footer id="pie">
            <h6 class="auto-style16">Programacion IV -III Cuatrimestre  UAM &COPY 2017</h6>
            <h5 class="auto-style19">Proyecto Final</h5>
        </footer>
    </form>
</body>
</html>