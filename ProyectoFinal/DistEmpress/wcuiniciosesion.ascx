<%@ Control  Language="C#" AutoEventWireup="true" CodeBehind="wcuiniciosesion.ascx.cs" Inherits="DistEmpress.wcuiniciosesion" %>

<link href="css/login.css" rel="stylesheet" />
<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
<style type="text/css">
    .auto-style2 {
        width: 400px;
        height: 50px;
        font-family: 'Century Gothic';
        font-size: inherit;
    }

    .auto-style3 {
        max-width: 380px;
        padding: 15px 35px 45px;
        margin-top: 50px;
        background-color: lightgray;
        position: center;
        text-align: center;
        width: 365px;
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        border-top-left-radius: 20px;
        border-top-right-radius: 20px;
    }

    .auto-style7 {
        width: 350px;
        border-color: #b59545;
        background-color: #b59545;
        height: 80px;
        font-family: "Route Du Soleil DEMO";
        font-size: 50px;
    }

    .auto-style8 {
        font-family: 'Myanmar Text';
        font-size: 16px;
    }

    .auto-style9 {
        max-width: 380px;
        padding: 15px 35px 45px;
        margin: 0 auto;
        background-color: #fff;
        position: center;
        text-align: center;
        width: 628px;
        height: 516px;
    }

    .auto-style10 {
        text-align: right;
    }
    .auto-style12 {
        font-family: "Route Du Soleil DEMO";
        font-size: 70px;
    }
</style>
<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
<section>
    <blockquote>
        <div>
            <form class="auto-style9">
                <table class="auto-style3" align="center">
                    <tr>
                        <td colspan="2">
                            <h2 class="auto-style12" style="vertical-align: middle; text-align: center">Bienvenido</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" runat="server" class="auto-style2" name="Usuario" placeholder="Usuario" required="" autofocus="autofocus" id="inptxt_usuario" /></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar el usuario" ForeColor="#CC0000" ControlToValidate="inptxt_usuario" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" runat="server" class="auto-style2" name="Contraseña" placeholder="Contraseña" required="" id="inptxt_clave" /></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar la contraseña" ForeColor="#CC0000" ControlToValidate="inptxt_clave" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style10">
                            <asp:LinkButton ID="lbtn_recuperar" runat="server" Text="Recuperar Contraseña" CssClass="auto-style8"></asp:LinkButton>
</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button class="auto-style7" type="button" OnClick="btn_igresar_Click" runat="server" Text="Login" Height="80px" ID="btn_login"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbl_mensaje" runat="server" CssClass="auto-style" Style="font-family: Offerings; font-size: x-large"></asp:Label>
                        </td><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="Recuperar_Clave" />
                    </tr>
                </table>
            </form>
        </div>
    </blockquote>
</section>
