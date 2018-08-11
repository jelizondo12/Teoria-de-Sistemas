<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmConsultas.aspx.cs" Inherits="DistEmpress.wfrmConsultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reportes</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="css/consultas.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <script src="js/main.js"></script>

    <style type="text/css">
        
         .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 51px;
        }
        .auto-style12 {
            text-align: center;
            width: 51px;
        }
        .auto-style13 {
            width: 41px;
        }
        .auto-style14 {
            text-align: center;
            width: 41px;
        }
        .auto-style15 {
            width: 51px;
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

            <table class="table" style="border-style: solid; border-color: #000000">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td colspan="5"><h1><asp:Image ID="Image1" runat="server" Height="50px" ImageAlign="AbsMiddle" style="margin-right:15px" ImageUrl="~/imagenes/report.png" Width="50px"/>Reportes</h1></td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                            &nbsp;</td>
                    <td>
                            <asp:Label ID="Label1" runat="server" Text="Buscar:"></asp:Label>
                        </td>
                    <td>
                            &nbsp;</td>
                    <td>
                            <asp:TextBox ID="txt_buscar" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    <td>
                            <asp:DropDownList ID="ddl_opcion" runat="server" Height="24px" Width="204px">
                                <asp:ListItem>Seleccione</asp:ListItem>
                                <asp:ListItem>Clientes</asp:ListItem>
                                <asp:ListItem>Proveedores</asp:ListItem>
                                <asp:ListItem>Usuarios</asp:ListItem>
                                <asp:ListItem>Pedidos</asp:ListItem>
                                <asp:ListItem>Facturas</asp:ListItem>
                                <asp:ListItem>Inventario</asp:ListItem>
                                <asp:ListItem>Empleados</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    <td class="auto-style15"><asp:ImageButton ID="ibtnBuscar" runat="server" Height="50px" ImageAlign="Middle" ImageUrl="~/imagenes/loupe.png" OnClick="ibtnBuscar_Click" Width="50px" /></td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">                           
                                &nbsp;</td>
                    <td colspan="5" class="auto-style10">                           
                                <asp:GridView ID="dgv_reportes" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="779px" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                                    <AlternatingRowStyle BackColor="White" />
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
                    <td class="auto-style12">                           
                                &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td colspan="5" class="auto-style10">
                <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td colspan="5" class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
            </table>
            </section>

         <!--#include virtual="/menu/footer.txt" -->
    </form>
</body>
</html>
