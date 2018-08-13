<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmRecuperacion_Clave.aspx.cs" Inherits="DistEmpress.wfrmRecuperacion_Clave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Restablecer Contraseña</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="css/Clave.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size:20px;
        }

        .auto-style3 {
            color: #0000FF;
        }

        .auto-style5 {
            text-align: left;
            color: black;
        }

        .auto-style9 {
            text-align: left;
            width: 42px;
        }

        .auto-style10 {
            text-align: center;
            width: 42px;
        }

        .auto-style11 {
            font-size: xx-large;
            text-align: left;
        }
        .auto-style12 {
            height: 51px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <header>
        </header>

        <blockquote>
            <table class="table">
                <tr>
                    <td colspan="4" class="auto-style12">
                        <h1 class="h1">
                            <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/imagenes/padlock.png" Height="50px"  />&nbsp; Restablecer Contraseña</h1>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">Contraseña actual:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_contraActual" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rvf_Actual" runat="server" ControlToValidate="txt_contraActual" ErrorMessage="Digite la contraseña que se le envio al correo" ForeColor="#CC0000" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">Contraseña nueva:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_nuevaContra" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfv_nueva" runat="server" ControlToValidate="txt_nuevaContra" ErrorMessage="Debe igresar la nueva contraseña" ForeColor="#CC0000" ValidationGroup="a">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev_nueva" runat="server" ControlToValidate="txt_nuevaContra" ErrorMessage="La nueva contraseña no cumple con los estandares de seguridad de una clave segura" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}$" ValidationGroup="a">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">Verificar contraseña:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_verificarNuevaContra" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfv_verificar" runat="server" ControlToValidate="txt_verificarNuevaContra" ErrorMessage="Debe igresar la nueva contraseña nuevamente para validar" ForeColor="#CC0000" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4">
                        <asp:Button ID="btn_realizar" runat="server" OnClick="Button1_Click" Text="Cambiar contraseña" Width="198px" Font-Names="Offerings" Font-Size="20px" Height="50px" ValidationGroup="a" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Font-Names="Offerings" Font-Size="20px" Height="50px" Width="110px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style1" colspan="3">
                        <asp:Label ID="lbl_mensaje" runat="server" CssClass="auto-style3" Font-Names="Offerings"></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ValidationGroup="a" />
                    </td>
                </tr>
            </table>
        </blockquote>
    </form>

    <!--#include virtual="/menu/footer.txt" -->
</body>
</html>
