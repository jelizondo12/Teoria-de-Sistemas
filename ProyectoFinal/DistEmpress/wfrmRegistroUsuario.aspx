    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmRegistroUsuario.aspx.cs" Inherits="DistEmpress.wfrmRegistroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro de Usuarios</title>
    <link href="css/Usuarios.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />

    

</head>

<body>
    <form runat="server">
 <header>
            <div class="menu_bar">
                <a href="#" class="bt-menu">Menú</a>
            </div>

            <nav>
                <ul>
                    <li><a href="wfrmIndex.aspx">Inicio</a></li>
                    <li id="Li1" runat="server">
                        <a href="#">Usuario</a>
                        <ul class="children">
                            <li><a href="wfrmRegistroUsuario.aspx">Registro de Usuarios</a></li>
                            <li><a href="wfrmRecuperacion_Clave.aspx">Recuperación Contraseña</a></li>
                        </ul>
                    </li>
                    <li id="Li2" runat="server"><a href="wfrmIngresoProducto.aspx">Producto</a></li>
                    <li id="Li3" runat="server"><a href="wfrmIngresoPedido.aspx">Pedidos</a></li>
                    <li id="Li4" runat="server"><a href="wfrmConsultas.aspx">Reportes</a></li>
                    <li><a href="wfrmInicioSesion.aspx">Cerrar Sesión</a></li>
                </ul>
            </nav>
        </header>

        <section id="contenedor">
            <div>
                <table>
                    <tr>
                        <td colspan="7">
                            <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/imagenes/id-card.png" />&nbsp;&nbsp;&nbsp; <span class="auto-style14"><span>&nbsp;Registro de Usuarios</span></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style160">&nbsp;</td>
                        <td class="auto-style92">Identificación:</td>
                        <td class="auto-style93">
                            <asp:TextBox ID="txt_ID" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            &nbsp;
                        </td>
                        <td >
                            <asp:RequiredFieldValidator ID="rfv_ID" runat="server" ControlToValidate="txt_ID" ErrorMessage="Campo identifiación requerido" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_ID" runat="server" ControlToValidate="txt_ID" ErrorMessage="La Identificación solamente puede ser números y con una extension de 9" ValidationGroup="Modificar_Registrar" ForeColor="#CC0000" ValidationExpression="^\d{9}$">*</asp:RegularExpressionValidator>
                            <asp:ImageButton ID="btn_refrescar" runat="server" Height="19px" ImageUrl="~/imagenes/rotate.png" OnClick="ImageButton1_Click" Width="20px" CausesValidation="false" ValidationGroup="Modificar_Registrar" />
                        </td>
                        <td class="auto-style95">Fecha de nacimiento</td>
                        <td class="auto-style94">
                            <asp:TextBox ID="txt_fechaNacmiento" runat="server" Height="20px" Width="200px" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                        <td class="auto-style114">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_fechaNacmiento" ErrorMessage="La fecha de nacimiento debe de contar con la siguiente mascara ##/##/####" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/]((175[7-9])|(17[6-9][0-9])|(1[8-9][0-9][0-9])|([2-9][0-9][0-9][0-9]))">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfv_fexhaNacimineto" runat="server" ControlToValidate="txt_fechaNacmiento" ErrorMessage="Debe ingresar su fecha de nacimiento" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style161">&nbsp;</td>
                        <td class="auto-style149"></td>
                        <td class="auto-style150"></td>
                        <td class="auto-style151"></td>
                        <td class="auto-style152"></td>
                        <td class="auto-style152"></td>
                        <td class="auto-style153"></td>
                    </tr>
                    <tr>
                        <td class="auto-style162">&nbsp;</td>
                        <td class="auto-style119">Nombre:</td>
                        <td class="auto-style169">
                            <asp:TextBox ID="txt_nombre" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style121">
                            <asp:RequiredFieldValidator ID="rfv_nombre" runat="server" ControlToValidate="txt_nombre" ErrorMessage="Campo nombre requerido" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_nombre" ErrorMessage="El nombre debe ser solamente letras" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style124">Número de Teléfono</td>
                        <td class="auto-style125">
                            <asp:TextBox ID="txt_telefono" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style123">
                            <asp:RequiredFieldValidator ID="rfv_telefono" runat="server" ControlToValidate="txt_telefono" ErrorMessage="Campo teléfono requerido" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_telefono" runat="server" ErrorMessage="El teléfono solamente deben ser números con una extensión de 9 digitos" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar" ValidationExpression="^\d{8}$" ControlToValidate="txt_telefono">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style166">&nbsp;</td>
                        <td class="auto-style150"></td>
                        <td class="auto-style150"></td>
                        <td class="auto-style151"></td>
                        <td class="auto-style152"></td>
                        <td class="auto-style152"></td>
                        <td class="auto-style153"></td>
                    </tr>
                    <tr>
                        <td class="auto-style162">&nbsp;</td>
                        <td class="auto-style119">Primer Apellido:</td>
                        <td class="auto-style154">
                            <asp:TextBox ID="txt_pApellido" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style121">
                            <asp:RegularExpressionValidator ID="rev_pApellido" runat="server" ControlToValidate="txt_pApellido" ErrorMessage="El primer apellido debe ser solamente letras" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfv_pApellido" runat="server" ControlToValidate="txt_pApellido" ErrorMessage="Campo primer apellido requerido" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style124">Correo Elextrónico:</td>
                        <td class="auto-style125">
                            <asp:TextBox ID="txt_correo" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style123">
                            <asp:RequiredFieldValidator ID="rfv_correo" runat="server" ControlToValidate="txt_correo" ErrorMessage="El campo correo no puede estar vacío" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_correo" runat="server" ControlToValidate="txt_correo" ErrorMessage="Campo correo electronico debe de contar con numeros, letras y @" ForeColor="#CC0000" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" ValidationGroup="Modificar_Registrar">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style167">&nbsp;</td>
                        <td class="auto-style140"></td>
                        <td class="auto-style140"></td>
                        <td class="auto-style137"></td>
                        <td class="auto-style143"></td>
                        <td class="auto-style143"></td>
                        <td class="auto-style138"></td>
                    </tr>

                    <tr>
                        <td class="auto-style162">&nbsp;</td>
                        <td class="auto-style119">Segundo Apellido:</td>
                        <td class="auto-style154">
                            <asp:TextBox ID="txt_sApellido" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style121">
                            <asp:RequiredFieldValidator ID="rfv_sApellido" runat="server" ControlToValidate="txt_sApellido" ErrorMessage="Campo segundo apellido requerido" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_sApellido" runat="server" ControlToValidate="txt_sApellido" ErrorMessage="El segundo apellido debe ser solamente letras" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar" ValidationExpression="^[a-zA-Z]*">*</asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style124">Dirección exacta:</td>
                        <td class="auto-style125">
                            <asp:TextBox ID="txt_direccion" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style123">
                            <asp:RequiredFieldValidator ID="rfv_direccion" runat="server" ControlToValidate="txt_direccion" ErrorMessage="Campo dirección requerida" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style167">&nbsp;</td>
                        <td class="auto-style140"></td>
                        <td class="auto-style140"></td>
                        <td class="auto-style137"></td>
                        <td class="auto-style142"></td>
                        <td class="auto-style147"></td>
                        <td class="auto-style148"></td>
                    </tr>

                    <tr>

                        <td class="auto-style162">&nbsp;</td>

                        <td class="auto-style119">Tipo de&nbsp;usuario:</td>
                        <td class="auto-style154">
                            <asp:DropDownList ID="Drop_tipoUsuario" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Seleccione el tipo de usuario</asp:ListItem>
                                <asp:ListItem Value="A">Administrador</asp:ListItem>
                                <asp:ListItem Value="V">Vendedor</asp:ListItem>
                                <asp:ListItem Value="C">Compras Inventarios</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style121">
                            <asp:RequiredFieldValidator ID="rfv_tipoUsuario" runat="server" ControlToValidate="Drop_tipoUsuario" ErrorMessage="Debe seleccionar el tipo de usuario" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style124">Nombre de Usuario:</td>
                        <td class="auto-style125">
                            <asp:Label ID="lbl_usuario" runat="server" Text="[lbl_usuario]" CssClass="auto-style76"></asp:Label>
                        </td>
                        <td class="auto-style126">&nbsp;</td>
                    </tr>
                        
                    <tr>
                        <td class="auto-style165">&nbsp;</td>
                        <td class="auto-style139"></td>
                        <td class="auto-style140"></td>
                        <td class="auto-style137"></td>
                        <td class="auto-style142"></td>
                        <td class="auto-style143"></td>
                        <td class="auto-style138"></td>
                    </tr>

                    <tr>
                        <td class="auto-style162">&nbsp;</td>
                        <td class="auto-style119">&nbsp;</td>
                        <td class="auto-style120">&nbsp;</td>
                        <td class="auto-style121">&nbsp;</td>
                        <td class="auto-style124">Contraseña:</td>
                        <td class="auto-style125">
                            <asp:TextBox ID="txt_clave" runat="server" Height="20px" Width="200px" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                        </td>

                        <td class="auto-style123">
                            <asp:RequiredFieldValidator ID="rfv_clave" runat="server" ControlToValidate="txt_clave" ErrorMessage="Debe ingresar una contraseña" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_clave" runat="server" ControlToValidate="txt_clave" ErrorMessage="La contraseña no es una clave segura, debe usar letras , números, mayusculas, minusculas y debe ser entre 6 y 15 caracteres" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}$" Enabled="False" ValidationGroup="Modificar_Registrar">*</asp:RegularExpressionValidator>
                        </td>

                    </tr>

                    <tr>
                        <td style="text-align: center" class="auto-style167">&nbsp;</td>
                        <td colspan="2" style="text-align: center" class="auto-style136"></td>
                        <td style="text-align: center" class="auto-style137"></td>
                        <td colspan="2" style="text-align: center" class="auto-style136"></td>
                        <td style="text-align: center" class="auto-style138"></td>
                    </tr>

                    <tr>
                        <td style="text-align: center" class="auto-style168">
                            &nbsp;</td>
                        <td colspan="2" style="text-align: center" class="auto-style127">
                            <asp:DropDownList ID="Drop_accion" runat="server" Height="20px" Width="200px">
                                <asp:ListItem>Seleccione</asp:ListItem>
                                <asp:ListItem>Registrar</asp:ListItem>
                                <asp:ListItem>Modificar</asp:ListItem>
                                <asp:ListItem>Eliminar</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="text-align: center" class="auto-style121">&nbsp;</td>
                        <td colspan="2" style="text-align: center" class="auto-style127">
                            <asp:Button ID="btn_realizar" runat="server" OnClick="btn_realizar_Click" Text="Realizar" CausesValidation="true" ValidationGroup="Modificar_Registrar" />
                        </td>
                        <td style="text-align: center" class="auto-style123">&nbsp;</td>
                    </tr>

                    <tr>
                        <td style="text-align: center" class="auto-style159">&nbsp;</td>
                        <td colspan="5" style="text-align: center" class="auto-style103">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Modificar_Registrar" />
                            &nbsp;
                            <asp:Label ID="lbl_accion" runat="server"></asp:Label>
                        </td>
                        <td style="text-align: center" class="auto-style115">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </section>

         <div class="footer">
            <!--#include virtual="/menu/footer.txt" -->
        </div>

    </form>
</body>
</html>
