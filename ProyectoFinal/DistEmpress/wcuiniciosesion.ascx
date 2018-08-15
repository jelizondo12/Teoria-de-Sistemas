<%@ Control  Language="C#" AutoEventWireup="true" CodeBehind="wcuiniciosesion.ascx.cs" Inherits="DistEmpress.wcuiniciosesion" %>

<link href="css/login.css" rel="stylesheet" />
<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
<style type="text/css">
    
    .auto-style3 {
        padding: 45px 50px 40px;
        background-color: black;
        text-align: center;
        width: 650px;
        height: 621px;
    }

        </style>
<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>

    <form id="login" style="max-height:250px" >
<div class="imagen">
    <asp:Image ID="Image1" runat="server" ImageAlign="Left" ImageUrl="~/imagenes/6.jpg" Height="706px" Width="650px" />

<div  class="auto-style3">
        <table style="margin-left:80px;">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/logo.png" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    <input type="text" runat="server" class="auto-style13" name="Usuario" placeholder="Usuario" required="" autofocus="autofocus" id="inptxt_usuario" height="200px" width="200" /></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar el usuario" ForeColor="#CC0000" ControlToValidate="inptxt_usuario" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td >
                    <input type="password" runat="server" name="Contraseña" placeholder="Contraseña" required="" id="inptxt_clave" height="200px" width="50px" /></td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar la contraseña" ForeColor="#CC0000" ControlToValidate="inptxt_clave" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td colspan="2" >
                    <asp:LinkButton ID="lbtn_recuperar" runat="server" Text="Recuperar Contraseña"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" >&nbsp;</td>
            </tr>
            <tr>
                <td class=boton colspan="2">
                    <asp:Button type="button" OnClick="btn_igresar_Click" runat="server" Text="Login" Height="80px" ID="btn_login" Width="197px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" ><asp:Label ID="lbl_mensaje" runat="server" CssClass="auto-style" Style="font-family: Offerings; font-size: x-large; color: #CCCCCC;"></asp:Label><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Recuperar_Clave" /></td>
            </tr>
            <tr>
                <td colspan="2" >&nbsp;</td>
            </tr>
            </table>
    </div>
</div>
    </form>


