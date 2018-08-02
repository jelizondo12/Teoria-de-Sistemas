<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wcuiniciosesion.ascx.cs" Inherits="DistEmpress.wcuiniciosesion" %>
<link href="css/InicioSesion.css" rel="stylesheet" />
<style type="text/css">
    .auto-style6 {
        width: 15px;
    }
    .auto-style7 {
        width: 100%;
        height: 39px;
        border-radius:15PX;
    }
    .auto-style8 {
        width: 254px;
        text-align: center;
    }
    .auto-style9 {
       text-align: center;
       color: #CCCCCC;
    }
    .auto-style10 {
        color: #0000FF;
    }
    .auto-style12 {
        width: 47px;
        position:center;
        vertical-align:central;
        text-align:left;
    }
    .auto-style15 {
        font-size: x-small;
        color: #0000FF;
        text-decoration: none;
    }
    .auto-style16 {
        width: 15px;
        text-align: left;
    }
    .auto-style17 {
        font-size: xx-large;
    }
    .auto-style18 {
        text-align: right;
    }
</style>
      <%-- contenerdor --%>
        <section id="contenedor">
<blockquote id="iniciosesion" >
        <table class="auto-style7" style="border-style: solid; border-color: #CCCCCC; width: 500px; height: 500px; text-align: right;">
            <tr>
                <td colspan="4">
    <h1 class="auto-style9"><asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/imagenes/user.png" />&nbsp;&nbsp; <span class="auto-style17">Inicio de Sesión</span></h1>
                </td>
                <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6"> &nbsp;</td>
                <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;Usuario:</td>
                <td class="auto-style8"><asp:TextBox ID="txt_usuario" runat="server" Width="200px" height="20px"></asp:TextBox></td>
                <td class="auto-style16"> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar el usuario" ForeColor="#CC0000" ControlToValidate="txt_usuario" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator> </td>
                <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;Contraseña:</td>
                <td class="auto-style8"><asp:TextBox ID="txt_clave" runat="server" Width="200px" Height="20px" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox></td>
                <td class="auto-style16"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar la contraseña" ForeColor="#CC0000" ControlToValidate="txt_clave" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
                <tr>
                <td class="auto-style18" colspan="4">
                    <asp:LinkButton ID="lbl_recuperarClave" runat="server" OnClick="lbl_recuperarClave_Click" ForeColor="Blue" CausesValidation="false" ValidationGroup="Recuperar_Clave" CssClass="auto-style15" >¿Ha olvidado su contraseña?</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <tr>
                <td class="auto-style9" colspan="4"> <asp:ImageButton ID="btn_ingresar" runat="server" OnClick="btn_igresar_Click" ImageUrl="~/imagenes/login.png" CausesValidation="true" ValidationGroup="Recuperar_Clave" Height="50px" ImageAlign="Middle" Width="50px" /></td>
                <tr>
                <td class="auto-style9" colspan="4">
                    <asp:Label ID="lbl_mensaje" runat="server" Text="" CssClass="auto-style10"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Recuperar_Clave" />
                    </td>
                </table>
</blockquote>
            </section>