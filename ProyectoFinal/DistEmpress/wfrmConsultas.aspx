<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmConsultas.aspx.cs" Inherits="DistEmpress.wfrmConsultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reportes</title>
    <link href="css/consultas.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            text-align: left;
            overflow: auto;
            height: 417px;
            width: 800px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            width:800px;
            height:800px;
            text-align: center;
        }
         .auto-style8 {
            text-align: center;
        }
    </style>
</head>

<body> 
    <form id="form1" runat="server">
        <section id="contenedor">
            <%-- menu --%>
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

            <%--Cuerpo--%>
            <div id="cuerpo" class="auto-style1">
                <br/>
                    <h1><asp:Image ID="Image1" runat="server" Height="50px" ImageAlign="AbsMiddle" ImageUrl="~/imagenes/report.png" Width="50px" />&nbsp; Reportes</h1>
                <br />
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Buscar:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_buscar" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_opcion" runat="server" Height="20px" Width="200px">
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
                        <td>
                            <asp:ImageButton ID="ibtnBuscar" runat="server" Height="50px" ImageAlign="Middle" ImageUrl="~/imagenes/loupe.png" OnClick="ibtnBuscar_Click" Width="50px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div id="div_grid" class="auto-style2">
                                <asp:GridView ID="dgv_reportes" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="779px" ShowHeaderWhenEmpty="true" HorizontalAlign="Center">

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
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
            <%-- pie de página --%>
         <!--#include virtual="/menu/footer.txt" -->
            </div>
        </section>  
    </form>
</body>
</html>
