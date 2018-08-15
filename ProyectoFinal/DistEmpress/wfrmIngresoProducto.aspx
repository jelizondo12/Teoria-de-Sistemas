<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmIngresoProducto.aspx.cs" Inherits="DistEmpress.wfrmIngresoProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ingreso de Productos</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="css/menu.css" rel="stylesheet" />
    <link href="css/Productos.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/main.js"></script>
    <style type="text/css">
        .auto-style2 {
            border-style: solid;
            border-width: medium;
            width: auto;
            height: auto;
            border-color: inherit;
            border-bottom-left-radius: 12px;
            border-bottom-right-radius: 12px;
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
            font-family: 'Century Gothic';
            font-size: 15px;
            color: black;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style3 {
            height: 48px;
        }
        .auto-style4 {
            height: 38px;
        }
        .auto-style7 {
            text-align: center;
            height: 38px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            height: 48px;
            text-align: center;
        }
        .auto-style13 {
            height: 33px;
            width: 63px;
        }
        .auto-style14 {
            height: 34px;
            width: 63px;
        }
        .auto-style15 {
            height: 33px;
            width: 45px;
        }
        .auto-style16 {
            height: 34px;
            width: 45px;
            text-align: center;
        }
        .auto-style17 {
            height: 34px;
            width: 63px;
            text-align: center;
        }
        .auto-style18 {
            height: 33px;
            width: 63px;
            text-align: center;
        }
        .auto-style19 {
            height: 33px;
            width: 45px;
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
                            <ul class="children" style="text-align: left">
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

            <table class="auto-style2" >
                <tr>
                    <td  colspan="11" style="text-align:center; font-family:'Smile of the Ocean'; font-size:50px" class="auto-style3">
                        <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/imagenes/comestibles.png" Height="50px" Width="50px" Style="margin-right: 15px" />Ingreso de Productos</td>
                </tr>
                <tr>
                    <td class="auto-style8" >&nbsp;</td>
                    <td class="auto-style8" >&nbsp;</td>
                    <td class="auto-style8" >
                        &nbsp;</td>
                    <td class="auto-style15" >
                        &nbsp;</td>
                    <td  colspan="2" class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style8" >
                        &nbsp;</td>
                    <td class="auto-style13" >
                        &nbsp;</td>
                    <td class="auto-style8" >
                        &nbsp;</td>
                    <td class="auto-style8" >
                        &nbsp;</td>
                    <td class="auto-style8" >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" ></td>
                    <td class="auto-style8" >&nbsp;<asp:Label ID="Label4" runat="server" Text="   Nombre del Producto:"></asp:Label>
                    &nbsp;</td>
                    <td class="auto-style8" >
                        <asp:DropDownList ID="ddl_producto" runat="server" height="20px" width="200px">
                                    </asp:DropDownList>
                    </td>
                    <td class="auto-style19" >
                        
                    </td>
                    <td  colspan="2" class="auto-style8">
                        ID del Producto:</td>
                    <td class="auto-style8" >
                        <asp:TextBox ID="txt_productid" runat="server" Width="200px" CssClass="auto-style10" Height="25px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style18" >
                        <a
                    </td>
                    <td class="auto-style8" >
                        <asp:ImageButton ID="ib_refrescar" runat="server" ImageUrl="~/imagenes/rotate.png" OnClick="ib_refrescar_Click" Height="50px" ValidationGroup="Modificar_Registrar" CausesValidation="false" ImageAlign="Middle" Width="50px" />
                    </td>
                    <td class="auto-style8" >
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imagenes/eraser.png" OnClick="ImageButton1_Click" Width="50px" Height="50px" ImageAlign="Middle" />
                    </td>
                    <td class="auto-style8" >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" >&nbsp;</td>
                    <td class="auto-style8" ><asp:Label ID="Label5" runat="server" Text="Proveedor:"></asp:Label></td>
                    <td class="auto-style8" >
                        <asp:DropDownList ID="ddl_supplier" runat="server" Height="25px" Width="200px">
                            <asp:ListItem Selected="True" Value="1">Seleccione</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style19" >
                        &nbsp;</td>
                    <td  colspan="2" class="auto-style8">
                        <asp:Label ID="Label6" runat="server" Text="Categoría:"></asp:Label>
                    </td>
                    <td class="auto-style8" >
                        <asp:DropDownList ID="ddl_category" runat="server" Height="25px" Width="200px">
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
                    <td class="auto-style18" >
                        &nbsp;</td>
                    <td class="auto-style8" >&nbsp;</td>
                    <td class="auto-style8" >&nbsp;</td>
                    <td class="auto-style8" >&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >
                        <asp:Label ID="Label7" runat="server" Text="Cantidad por Unidad:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txt_quantityperunit" runat="server" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style16" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_quantityperunit" ErrorMessage="El campo QuantityPerUnit no puede ir vacío" ValidationGroup="Modificar_Registrar" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td  colspan="2" class="auto-style9">
                        <asp:Label ID="Label8" runat="server" Text="Precio Unitario:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txt_unitprice" runat="server" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style17" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_unitprice" ErrorMessage="El campo UnitPrice no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >
                        <asp:Label ID="Label9" runat="server" Text="Unidades en Stock:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txt_unitsinstock" runat="server" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style16" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_unitsinstock" ErrorMessage="El campo Units in Stock no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                    </td>
                    <td  colspan="2" class="auto-style9">
                        <asp:Label ID="Label10" runat="server" Text="Orden de Unidades:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txt_unitsonorder" runat="server" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style17" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_unitsonorder" ErrorMessage="El campo UnitsOnOrder no puede ir vacío" ValidationGroup="Modificar_Registrar" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" ><asp:Label ID="Label11" runat="server" Text="Nivel de Reordenamiento:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:TextBox ID="txt_reorderlevel" runat="server" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style16" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_reorderlevel" ErrorMessage="El campo Reorder Level no puede ir vacío" ForeColor="Red" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                    </td>
                    <td  colspan="2" class="auto-style9">
                        <asp:Label ID="Label12" runat="server" Text="Descontinuado:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:DropDownList ID="ddl_discontinued" runat="server" Height="25px" Width="200px">
                            <asp:ListItem Value="Si">Si</asp:ListItem>
                            <asp:ListItem Value="No" Selected="True">No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style14" >
                        &nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >
                        <asp:Label ID="Label13" runat="server" Text="Estatus del Producto:"></asp:Label>
                    </td>
                    <td class="auto-style9" >
                        <asp:DropDownList ID="ddl_productstatus" runat="server" Height="25px" Width="200px">
                            <asp:ListItem Value="1">Seleccione</asp:ListItem>
                            <asp:ListItem Value="A">Activo</asp:ListItem>
                            <asp:ListItem Value="I">Inactivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style16" >
                        &nbsp;</td>
                    <td  colspan="2" class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style9" >
                        &nbsp;</td>
                    <td class="auto-style14" >
                        &nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                    <td class="auto-style9" >&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" >&nbsp;</td>
                    <td  colspan="4" class="auto-style7">
                        <asp:DropDownList ID="ddl_Seleccion" runat="server" Height="25px" Width="200px">
                            <asp:ListItem>Seleccione</asp:ListItem>
                            <asp:ListItem>Registrar</asp:ListItem>
                            <asp:ListItem>Eliminar</asp:ListItem>
                            <asp:ListItem>Modificar</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td  colspan="3" class="auto-style7">
                        <asp:Button ID="btn_agregar" runat="server" Text="Realizar" Width="150px" OnClick="btn_agregar_Click" CausesValidation="true" ValidationGroup="Modificar_Registrar" Height="25px" Font-Names="MacyandKaraFont" Font-Size="Large" />
                    </td>
                    <td class="auto-style4" >
                        &nbsp;</td>
                    <td class="auto-style4" >
                        &nbsp;</td>
                    <td class="auto-style4" >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" >&nbsp;</td>
                    <td  colspan="7" class="auto-style12">
                        <asp:Label ID="lbl_mensaje" runat="server" ForeColor="Blue"></asp:Label>
                        <div class="auto-style11" >
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Modificar_Registrar" Height="30px" />
                        </div>
                    </td>
                    <td class="auto-style3" >
                        &nbsp;</td>
                    <td class="auto-style3" >
                        &nbsp;</td>
                    <td class="auto-style3" >
                        &nbsp;</td>
                </tr>
            </table>

            <!--#include virtual="/menu/footer.txt" -->

        </section>
    </form>
</body>
</html>

