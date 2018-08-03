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
                        <img src="imagenes/logo.PNG" alt="Logo Empresarial" style="text-align: center"/>
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
            <br />
            <%--Cuerpo--%>
            <div>
            <blockquote id="cuerpo" class="auto-style1">
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
            </blockquote>
            <%-- pie de página --%>
         <!--#include virtual="/menu/footer.txt" -->
            </div>
        </section>  
    </form>
</body>
</html>
