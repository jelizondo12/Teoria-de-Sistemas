<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmIngresoPedido.aspx.cs" Inherits="DistEmpress.wfrmIngresoPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ingreso Pedidos</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="css/Pedidos.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/main.js"></script>

    <style type="text/css">
        
        .auto-style6 {
            margin-left: 211px;
        }

        .auto-style15 {
            color: #0000FF;
        }

        .auto-style43 {
            height: 38px;
            width: 338px;
        }
        .auto-style44 {
            height: 39px;
            width: 338px;
        }
        .auto-style45 {
            height: 39px;
            text-align: center;
        }
        .auto-style46 {
            height: 39px;
        }
        .auto-style47 {
            width: 200px;
            height: 20px;
        }
        .auto-style48 {
            height: 38px;
            width: 338px;
            text-align: center;
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
                            <ul class="children" style="text-align:left">
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
                    <h1 class="h1" style="text-align: center; vertical-align: middle"><asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/imagenes/invoice.png" Width="50px" />Ingreso de Pedidos</h1><br /><br />

                    <table class="table" style="align-content:center">
                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label10" runat="server" Text="Numero de factura:"></asp:Label></td>
                            <td class="auto-style43"><asp:Label ID="lbl_numero_factura" runat="server" Text="" height="20px" width="200px"></asp:Label></td>
                            <td class="auto-style48" colspan="2"><asp:ImageButton ID="btn_generarFactura" runat="server" Height="30px" ImageUrl="~/imagenes/rotate.png" Width="30px" OnClick="btn_generarFactura_Click" ImageAlign="AbsMiddle" /></td>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label11" runat="server" Text="Cliente:"></asp:Label></td>
                            <td class="auto-style43"><asp:DropDownList ID="ddl_clientes" runat="server" Height="20px" Width="200px">
                    </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                           <td class="auto-style37">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label9" runat="server" Text="Id del Pedido: "></asp:Label></td>
                            <td class="auto-style43"><asp:TextBox ID="txt_idpedido" runat="server" Height="20px" Width="200px"></asp:TextBox></td>
                            <td class="auto-style48" colspan="2"> <asp:ImageButton ID="ib_refresh" runat="server" ImageUrl="~/imagenes/rotate.png" CssClass="auto-style3" OnClick="ib_refresh_Click" Height="31px" Width="31px" />
                                </td>
                            <td class="auto-style48"><asp:ImageButton ID="ib_limpiar" runat="server" Height="39px" ImageUrl="~/imagenes/eraser.png" OnClick="ib_limpiar_Click" Width="41px" CausesValidation="false" ValidationGroup="Modificar_Registrar" /></td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label2" runat="server" Text="Nombre del Producto: "></asp:Label></td>
                            <td class="auto-style43"><asp:DropDownList ID="ddl_producto" runat="server" height="20px" width="200px">
                                    </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                </td>
                            <td class="auto-style43" colspan="2">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label3" runat="server" Text="Categoria: "></asp:Label></td>
                            <td class="auto-style43"><asp:Label ID="lbl_category" runat="server" Text="" height="20px" width="200px"></asp:Label></td>
                            <td class="auto-style43" colspan="2">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label4" runat="server" Text="Cantidad: "></asp:Label></td>
                            <td class="auto-style43"><input runat="server" id="txt_cantidad" type="number" min="1" class="auto-style47" /></td>
                            <td class="auto-style48" colspan="2"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cantidad" ErrorMessage="Cantidad no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                                </td>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label5" runat="server" Text="Precio Unitario: "></asp:Label></td>
                            <td class="auto-style43"><asp:Label ID="lbl_unitprice" runat="server" Text="" height="20px" width="200px"></asp:Label></td>
                            <td class="auto-style43" colspan="2">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style43"><asp:Label ID="Label6" runat="server" Text="Fecha del Pedido:"></asp:Label></td>
                            <td class="auto-style43"><asp:Label ID="lbl_fechapedido" runat="server" Text="" height="20px" width="200px"></asp:Label></td>
                            <td class="auto-style43" colspan="2">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style44"><asp:Label ID="Label7" runat="server" Text="Usuario: "></asp:Label></td>
                            <td class="auto-style44"><asp:Label ID="txt_usuario" runat="server"></asp:Label></td>
                            <td class="auto-style44" colspan="2">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style44">
                                    <asp:Label ID="Label12" runat="server" Text="Label">Seleccione una accion:</asp:Label>
                            </td>
                            <td class="auto-style44">
                                    <asp:DropDownList ID="ddl_seleccionar" runat="server" Height="20px" Width="200px">
                                        <asp:ListItem Value="Seleccionar">Seleccionar</asp:ListItem>
                                        <asp:ListItem Value="Registrar">Agregar al carrito</asp:ListItem>
                                        <asp:ListItem Value="Modificar">Modificar producto en el carrito</asp:ListItem>
                                        <asp:ListItem Value="Eliminar">Eliminar producto en el carrito</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            <td class="auto-style44" colspan="2"> <asp:ImageButton ID="ib_agregar" runat="server" ImageUrl="~/imagenes/shopping-cart.png" CssClass="auto-style4" OnClick="ib_agregar_Click" CausesValidation="true" ValidationGroup="Modificar_Registrar" Height="50px" ImageAlign="Middle" Width="50px" /></td>
                            <td class="auto-style44"><asp:ImageButton style="margin-left:30px" ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/imagenes/receipt.png" OnClick="ImageButton1_Click" Width="50px" CausesValidation="false" ValidationGroup="Modificar_Registrar" /></td>
                            <td class="auto-style44">&nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style46" colspan="3">&nbsp;</td>
                            <td class="auto-style46" colspan="3">&nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style45" colspan="6"><asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style15"></asp:Label></td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style45" colspan="6"><asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style6" ForeColor="Red" Width="344px" ValidationGroup="Modificar_Registrar" /></td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style45" colspan="6"><asp:GridView runat="server" CellPadding="4" GridLines="Horizontal" Width="631px" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" ID="dgv_carrito" BackColor="White" BorderColor="#336666" BorderStyle="Solid" BorderWidth="3px">
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                                </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style44">
                                    &nbsp;</td>
                            <td class="auto-style44">
                                    &nbsp;</td>
                            <td class="auto-style44" colspan="2">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                            <td class="auto-style44">&nbsp;</td>
                        </tr>
                        </table>
            </div>
          
            <!--#include virtual="/menu/footer.txt" -->

        </section>
    </form>
</body>
</html>
