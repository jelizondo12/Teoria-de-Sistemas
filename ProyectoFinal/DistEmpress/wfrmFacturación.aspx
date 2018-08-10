<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmFacturación.aspx.cs" Inherits="DistEmpress.wfrmFacturación" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Facturación</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="css/Facturas.css" rel="stylesheet" />
     <link href="css/menu.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/main.js"></script>
 
       <style type="text/css">
        
        .auto-style4 {
            margin-left: 0px;
        }

        .auto-style12 {
            color: #0000FF;
        }

        .auto-style13 {
            text-decoration: underline;
        }

        .auto-style23 {
            font-size: medium;
        }
           .auto-style25 {
               width: 599px;
           }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <section>
            <header>
                <div class="menu_bar">
                    <a href="#" class="bt-menu">Menú</a>
                </div>

                <nav style="text-align:center">
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
            <div>

                    <h1 style="text-align:center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/invoice.png" Height="50px" ImageAlign="Middle" Width="50px" />&nbsp;&nbsp;&nbsp; 
                        Facturación de pedidos
                    </h1>
                    <br />
                    <table class="table">
                        <tr>
                            <td colspan="5"><asp:Label ID="Label4" runat="server" Text="Numero de factura:"></asp:Label>&nbsp;&nbsp; <asp:Label ID="lbl_NumeroFactura" runat="server" Text="" CssClass="auto-style23"></asp:Label></td>
                        </tr>      
                        <tr>
                            <td colspan="5">
                        <asp:GridView ID="dgv_carrito" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1063px" Height="218px" HorizontalAlign="Left" CssClass="auto-style23" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle VerticalAlign="Middle" BackColor="White" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                                </td>
                        </tr>                   
                        <tr>
                            <td>
                                    &nbsp;</td>
                            <td >
                                    &nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td >
                                <asp:Label ID="Label1" runat="server" Text="Sub-total:"></asp:Label></td>
                            <td >
                                <asp:Label ID="lbl_sub_total" runat="server" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                    &nbsp;</td>
                            <td >
                                    &nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td >
                                <asp:Label ID="Label2" runat="server" Text="Impuesto de ventas(13%):"></asp:Label></td>
                            <td >
                                <asp:Label ID="lbl_impuestoventas" runat="server" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                    &nbsp;</td>
                            <td >
                                    &nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td >
                                <asp:Label ID="Label3" runat="server" Text="Total:"></asp:Label></td>
                            <td >
                                <asp:Label ID="lbl_total" runat="server" CssClass="auto-style13"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                    &nbsp;</td>
                            <td >
                                    &nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td >
                                 &nbsp;</td>
                            <td >
                                <asp:ImageButton ID="ib_agregar" runat="server" ImageUrl="~/imagenes/icono registrar.png" CssClass="auto-style4" OnClick="ib_agregar_Click" CausesValidation="true" /></td>
                        </tr>
                        <tr>
                            <td  colspan="5">
                                <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style12"></asp:Label>
                                <br />
                            </td>
                        </tr>
                    </table>
               </div>
             <!--#include virtual="/menu/footer.txt" -->
         </section>
    </form>
</body>
</html>