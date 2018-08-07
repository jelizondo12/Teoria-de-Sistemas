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
        .auto-style1 {
            overflow: auto;
            height: 211px;
            width: 1091px;
        }

        .auto-style2 {
            width: 71%;
            margin-left: 10px;
            margin-right:10px;
            height: 500px;
        }

        .auto-style3 {
            margin-left: 29px;
        }

        .auto-style4 {
            margin-left: 0px;
        }

        .auto-style6 {
            margin-left: 211px;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style14 {
            width: 286px;
            text-align: left;
        }

        .auto-style9 {
            width: 124px;
            text-align: center;
            height: 71px;
        }

        .auto-style10 {
            text-align: center;
            align-content:center;
            position:center;
            vertical-align:middle;
        }

        .auto-style11 {
            width: 286px;
            text-align: center;
            height: 71px;
        }

        .auto-style12 {
            width: 42px;
        }

        .auto-style13 {
            width: 42px;
            text-align: center;
        }

        .auto-style15 {
            color: #0000FF;
        }

        .auto-style18 {
            width: 35px;
            text-align: center;
        }

        .auto-style19 {
            overflow: auto;
            height: 95px;
            text-align: center;
        }

        .auto-style24 {
            width:auto;
            margin-left:0px;
            margin-right:50px;
            height: auto;
            text-align: center;
            vertical-align:middle;
            position:center;
            overflow: auto;
        }
        .auto-style25 {
            text-align: left;
            align-content: center;
            position: center;
            vertical-align: middle;
        }
        .auto-style26 {
            width: 286px;
            text-align: center;
            height: 34px;
        }
        .auto-style27 {
            width: 124px;
            text-align: center;
            height: 34px;
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
                <section class="cuerpo">
                    <h1 class="h1"><asp:Image ID="Image1" runat="server" Height="50px" ImageAlign="Middle" ImageUrl="~/imagenes/invoice.png" Width="50px" />Ingreso de Pedidos</h1>

                    <asp:Label ID="Label10" runat="server" Text="Numero de factura:"></asp:Label>
                    <asp:Label ID="lbl_numero_factura" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Cliente:"></asp:Label><asp:DropDownList ID="ddl_clientes" runat="server" Height="20px" Width="200px">
                    </asp:DropDownList><asp:ImageButton ID="btn_generarFactura" runat="server" Height="30px" ImageUrl="~/imagenes/rotate.png" Width="30px" OnClick="btn_generarFactura_Click" ImageAlign="AbsMiddle" />

                    <div class="div_grid2">
                        <div>
                            <asp:GridView ID="dgv_inventario" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" ShowHeaderWhenEmpty="true" Width="96%" Height="207px">
                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                        </div>
                    </div>

                    <h1 class="auto-style25"> <asp:Label ID="Label8" runat="server" Text="Pedido de productos"></asp:Label></h1>

                    <section>
                        <table class="table">
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label9" runat="server" Text="Id del Pedido: "></asp:Label></td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txt_idpedido" runat="server" Height="20px" Width="200px"></asp:TextBox></td>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style7">
                                    <asp:ImageButton ID="ib_agregar" runat="server" ImageUrl="~/imagenes/shopping-cart.png" CssClass="auto-style4" OnClick="ib_agregar_Click" CausesValidation="true" ValidationGroup="Modificar_Registrar" Height="50px" ImageAlign="Middle" Width="50px" /></td>
                                <td class="auto-style7">
                                    <asp:ImageButton ID="ib_limpiar" runat="server" Height="50px" ImageUrl="~/imagenes/eraser.png" OnClick="ib_limpiar_Click" Width="50px" CausesValidation="false" ValidationGroup="Modificar_Registrar" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label1" runat="server" Text="Id del Producto: "></asp:Label></td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txt_idproducto" runat="server" Height="20px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_idproducto" ErrorMessage="IdProducto no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label2" runat="server" Text="Nombre del Producto: "></asp:Label></td>
                                <td class="auto-style12">
                                    <asp:Label ID="lbl_productname" runat="server" Text=""></asp:Label></td>
                                <td class="auto-style18">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label3" runat="server" Text="Categoria: "></asp:Label></td>
                                <td class="auto-style13">
                                    <asp:Label ID="lbl_category" runat="server" Text=""></asp:Label></td>
                                <td class="auto-style18">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label4" runat="server" Text="Cantidad: "></asp:Label></td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txt_cantidad" runat="server" Height="20px" Width="200px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cantidad" ErrorMessage="Cantidad no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label5" runat="server" Text="Precio Unitario: "></asp:Label></td>
                                <td class="auto-style12">
                                    <asp:Label ID="lbl_unitprice" runat="server" Text=""></asp:Label></td>
                                <td class="auto-style18">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label6" runat="server" Text="Fecha del Pedido:"></asp:Label></td>
                                <td class="auto-style13">
                                    <asp:Label ID="lbl_fechapedido" runat="server" Text=""></asp:Label></td>
                                <td class="auto-style18">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label7" runat="server" Text="Usuario: "></asp:Label></td>
                                <td class="auto-style13">
                                    <asp:DropDownList ID="ddl_usuario" runat="server" Height="20px" Width="200px">
                                    </asp:DropDownList></td>
                                <td class="auto-style18">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style26">
                                    </td>
                                <td class="auto-style27" colspan="2">
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">
                                    <asp:ImageButton ID="ib_refresh" runat="server" ImageUrl="~/imagenes/rotate.png" CssClass="auto-style3" OnClick="ib_refresh_Click" Height="50px" Width="50px" /></td>
                                <td class="auto-style9" colspan="2">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/imagenes/receipt.png" OnClick="ImageButton1_Click" Width="50px" CausesValidation="false" ValidationGroup="Modificar_Registrar" /></td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style7">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style7">
                                    <asp:DropDownList ID="ddl_seleccionar" runat="server" Height="20px" Width="200px">
                                        <asp:ListItem Value="Seleccionar">Seleccionar</asp:ListItem>
                                        <asp:ListItem Value="Registrar">Registrar</asp:ListItem>
                                        <asp:ListItem>Modificar</asp:ListItem>
                                        <asp:ListItem>Eliminar</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style19">
                                    <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style15"></asp:Label>
                                    <div class="auto-style10">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style6" ForeColor="Red" Width="344px" ValidationGroup="Modificar_Registrar" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style10">
                       
                            <asp:GridView runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="631px" ShowHeaderWhenEmpty="true" HorizontalAlign="Center" ID="dgv_carrito">

                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                 

                                </td>
                            </tr>
                        </table>
                    </section>

                </section>
            </div>
          
            <!--#include virtual="/menu/footer.txt" -->

        </section>
    </form>
</body>
</html>
