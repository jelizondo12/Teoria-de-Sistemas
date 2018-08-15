<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wcuiniciosesion.ascx.cs" Inherits="DistEmpress.wcuiniciosesion" %>

<link href="css/login.css" rel="stylesheet" />

<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
<style type="text/css">
    
 .auto-style2 {
        width: 400px;
        height: 35px;
        font-family: 'Century Gothic';
        font-size: inherit;
    }

    .auto-style3 {
        /*max-width: 380px;*/
        padding: 15px 35px 45px;
        /*margin-top: 50px;*/
        padding: 45px 50px 40px;
        background-color: black;
        position: center;
        text-align: center;
        width: auto;
        /*border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        border-top-left-radius: 20px;
        border-top-right-radius: 20px;*/
        margin-left:647px;
        height:621px;
    }

    .auto-style7 {
        width: 400px;
        border-color: #b59545;
        background-color: #b59545;
        height: 50px;
        font-family: "cafÈ & brewery";
        font-size: 30px;
        border-bottom-left-radius:12px;
        border-bottom-right-radius:12px;
        border-top-left-radius:12px;
        border-top-right-radius:12px;
    }

    .auto-style8 {
        font-family: 'Myanmar Text';
        font-size: 16px;
    }


    .auto-style12 {
        font-family: Candara;
        font-size: 70px;
        color:lightgray;
    }
        .auto-style13 {
        width: 400px;
        height: 35px;
        font-family: 'Century Gothic';
        font-size: inherit;
    }
    .auto-style14 {
        height: 500px;
    }
    .auto-style15 {
        height: 81px;
    }
    .auto-style16 {
        height: 17px;
    }
    .auto-style19 {
        height: 27px;
    }
    .auto-style20 {
        height: 78px;
    }
    .auto-style21 {
        height: 24px;
    }
    .auto-style22 {
        height: 63px;
    }
        </style>
<%---------------------------------------------------------------------------------------------------------------------------------------------------------------%>
<form id="login" style="max-height:250px">
<div class="imagen">
    <asp:Image ID="Image1" runat="server" ImageAlign="Left" ImageUrl="~/imagenes/7.jpg" Height="706px" Width="650px" />
</div>
<div  class="auto-style3">
        <table style="margin-left:80px;" class="auto-style14">
            <tr>
                <td colspan="2" class="auto-style15">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/logo.png" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <input type="text" runat="server" class="auto-style13" name="Usuario" placeholder="Usuario" required="" autofocus="autofocus" id="inptxt_usuario" /></td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar el usuario" ForeColor="#CC0000" ControlToValidate="inptxt_usuario" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <input type="password" runat="server" class="auto-style2" name="Contraseña" placeholder="Contraseña" required="" id="inptxt_clave" /></td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar la contraseña" ForeColor="#CC0000" ControlToValidate="inptxt_clave" ValidationGroup="Recuperar_Clave">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style19">
                    <asp:LinkButton ID="lbtn_recuperar" runat="server" Text="Recuperar Contraseña" CssClass="auto-style8" OnClick="lbtn_recuperar_Click" ></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style20">
                    <asp:Button class="auto-style7" type="button" OnClick="btn_igresar_Click" runat="server" Text="Login" Height="80px" ID="btn_login" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">&nbsp;</td>
            </tr>
             <tr>
                        <td colspan="2">
                            <asp:Label ID="lbl_mensaje" runat="server" CssClass="auto-style" Style="font-family: Offerings; font-size: x-large"></asp:Label>
                        </td><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="LightGray" ValidationGroup="Recuperar_Clave" />
                    </tr>
            </table>
    </div>
    </form>