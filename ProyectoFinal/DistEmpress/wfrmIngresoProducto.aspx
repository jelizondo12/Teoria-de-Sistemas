<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmIngresoProducto.aspx.cs" Inherits="DistEmpress.wfrmIngresoProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ingreso de Productos</title>
    <link href="css/Productos.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    
    <style type="text/css">
        
        .auto-style3 {
            margin-left: 0px;
        }

        .auto-style9 {
            margin-left: 83px;
        }

        .auto-style15 {
            width: 87%;
            height: 1035px;
        }

        .auto-style18 {
            margin-left: 23px;
        }

        .auto-style21 {
            text-align: center;
        }

        .auto-style23 {
            color: FFFFF;
        }

        .auto-style40 {
            text-align: center;
            height: 65px;
        }

        .auto-style45 {
            height: 63px;
            text-align: center;
        }

        .auto-style48 {
            font-size: xx-large;
        }
        .auto-style54 {
            height: 64px;
        }
        .auto-style73 {
            width: 280px;
            height: 64px;
        }
        .auto-style74 {
            width: 242px;
            text-align: center;
            height: 64px;
        }
        .auto-style75 {
            width: 15px;
            text-align: center;
            height: 64px;
        }

        .auto-style76 {
            height: 64px;
            text-align: center;
        }

        .auto-style79 {
            width: 15px;
            height: 64px;
        }
        .auto-style80 {
            width: 15px;
            text-align: center;
            height: 18px;
        }
        .auto-style81 {
            height: 18px;
            text-align: center;
        }

        </style>
</head>
<body>
        <%-- contenerdor --%>
        <section id="contenedor">
    <form id="form1" runat="server">
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
            <div>
                <section>
                    <table id="table" class="auto-style15" style="border-style: solid; border-color: #CCCCCC; ">
                        <tr>
                            <td class="auto-style40" colspan="5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style45" colspan="5"><asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/imagenes/comestibles.png" Height="50px" Width="50px" /><strong><span class="auto-style48"> &nbsp;Ingreso de Productos</span></strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;ID del Producto: </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_productid" runat="server" Style="height: 22px" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_productid" ErrorMessage="El campo ProductID no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style76">
                                <asp:ImageButton ID="ib_refrescar" runat="server" ImageUrl="~/imagenes/rotate.png" OnClick="ib_refrescar_Click" Height="30px" ValidationGroup="Modificar_Registrar" CausesValidation="false" ImageAlign="Middle" />
                                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style18" ImageUrl="~/imagenes/eraser.png" OnClick="ImageButton1_Click" Width="30px" Height="30px" ImageAlign="Middle" />
                                <asp:Button ID="btnInventario" runat="server" CssClass="auto-style9" Text="Inventario" Width="171px" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label4" runat="server" Text="   Nombre del Producto:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_productname" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_productname" ErrorMessage="El campo ProductName no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Proveedor:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:DropDownList ID="ddl_supplier" runat="server" Height="20px" Width="205px">
                                    <asp:ListItem Selected="True" Value="1">Seleccione</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style75">
                                &nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Categoría:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:DropDownList ID="ddl_category" runat="server" Height="20px" Width="205px">
                                    <asp:ListItem Value="10">Seleccione</asp:ListItem>
                                    <asp:ListItem Value="1">Beverages</asp:ListItem>
                                    <asp:ListItem Value="2">Condiments</asp:ListItem>
                                    <asp:ListItem Value="3">Confections</asp:ListItem>
                                    <asp:ListItem Value="4">Dairy Products</asp:ListItem>
                                    <asp:ListItem Value="5">Grains/Cereals</asp:ListItem>
                                    <asp:ListItem Value="6">Meat/Poultry</asp:ListItem>
                                    <asp:ListItem Value="7">Produce</asp:ListItem>
                                    <asp:ListItem Value="8">Seafood</asp:ListItem>
                                    <asp:ListItem Value="10">Tools</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style75">
                                &nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label7" runat="server" Text="Cantidad por Unidad:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_quantityperunit" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_quantityperunit" ErrorMessage="El campo QuantityPerUnit no puede ir vacío" ValidationGroup="Modificar_Registrar" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label8" runat="server" Text="Precio Unitario:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_unitprice" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_unitprice" ErrorMessage="El campo UnitPrice no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label9" runat="server" Text="Unidades en Stock:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_unitsinstock" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_unitsinstock" ErrorMessage="El campo Units in Stock no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label10" runat="server" Text="Orden de Unidades:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_unitsonorder" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_unitsonorder" ErrorMessage="El campo UnitsOnOrder no puede ir vacío" ValidationGroup="Modificar_Registrar" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;<asp:Label ID="Label11" runat="server" Text="Nivel de Reordenamiento:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:TextBox ID="txt_reorderlevel" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style75">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_reorderlevel" ErrorMessage="El campo Reorder Level no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label12" runat="server" Text="Descontinuado:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:DropDownList ID="ddl_discontinued" runat="server" Height="20px" Width="205px">
                                    <asp:ListItem Value="Si">Si</asp:ListItem>
                                    <asp:ListItem Value="No" Selected="True">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style75">
                                &nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style79">&nbsp;</td>
                            <td class="auto-style73">&nbsp;
                                <asp:Label ID="Label13" runat="server" Text="Estatus del Producto:"></asp:Label>
                            </td>
                            <td class="auto-style74">
                                <asp:DropDownList ID="ddl_productstatus" runat="server" Height="20px" Width="205px">
                                    <asp:ListItem Value="1">Seleccione</asp:ListItem>
                                    <asp:ListItem Value="A">Activo</asp:ListItem>
                                    <asp:ListItem Value="I">Inactivo</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style75">
                                &nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style80">
                            </td>
                            <td class="auto-style81" colspan="2">
                            </td>
                            <td class="auto-style81" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style75">
                                &nbsp;</td>
                            <td class="auto-style76" colspan="2">
                                <asp:DropDownList ID="ddl_Seleccion" runat="server" Height="20px" Width="200px">
                                    <asp:ListItem>Seleccione</asp:ListItem>
                                    <asp:ListItem>Registrar</asp:ListItem>
                                    <asp:ListItem>Eliminar</asp:ListItem>
                                    <asp:ListItem>Modificar</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style76" colspan="2">
                                <asp:Button ID="btn_agregar" runat="server" Text="Realizar" CssClass="auto-style3" Width="102px" OnClick="btn_agregar_Click" CausesValidation="true" ValidationGroup="Modificar_Registrar" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style75">
                                &nbsp;</td>
                            <td class="auto-style76" colspan="4">
                                <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style23"></asp:Label>
                                <div class="auto-style21">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Modificar_Registrar" Height="30px" />
                                </div>
                            </td>
                        </tr>
                        </table>
                </section>
            </div>
        <br />
         <footer id="pie">
                    <h5>Programación IV - III Cuatrimestre  UAM &COPY 2017</h5>
             <h6>Proyecto Final</h6>
            </footer>
    </form>
     </section>
</body>
</html>

