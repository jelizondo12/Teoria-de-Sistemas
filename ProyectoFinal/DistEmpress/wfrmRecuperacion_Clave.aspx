<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrmRecuperacion_Clave.aspx.cs" Inherits="DistEmpress.wfrmRecuperacion_Clave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Restablecer Contraseña</title>
    <link href="css/Clave.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #CCCCCC;
        }
        .auto-style3 {
            color: #0000FF;
        }
        .auto-style4 {
            width: 750px;
            height: 500px;
            border-radius:15px;
            position:center;
            vertical-align:middle;
            align-content:center;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style7 {
            font-size: xx-large;
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
    </style>
</head>

<body style="margin-bottom: 0px">
    <form id="form1" runat="server">
               <%-- contenerdor --%>
        <section id="contenedor">
           <%--encabezdo--%>
        <header>
            <article class="logo">
                <section id="logo" class="fadeIn">
                    <img src="imagenes/logo.PNG" alt="Logo Empresarial">
                </section>
            </article>
        </header>
        <br />
        <br />
        <br />
        <br />
    <div>
    <blockquote>
                <table style="text-align: right; border-left-style: solid; border-left-color: #CCCCCC; border-right-style: solid; border-right-color: #CCCCCC; border-top-style: ridge; border-top-color: #CCCCCC; border-bottom-style: solid; border-bottom-color: #CCCCCC;" class="auto-style4">
                    <tr>
                        <td colspan="4"> <h1 class="auto-style2"><asp:Image ID="Image1" runat="server" Height="50px" ImageAlign="AbsMiddle" ImageUrl="~/imagenes/recuperar.png" Width="50px" />&nbsp; <span class="auto-style7">Restablecer Contraseña</span></h1></td>
                    </tr>
                    <tr>
                        <td colspan="4"> &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style5">Contraseña actual:</td>
                        <td class="auto-style1">
        <asp:TextBox ID="txt_contraActual" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style11"><asp:RequiredFieldValidator ID="rvf_Actual" runat="server" ControlToValidate="txt_contraActual" ErrorMessage="Digite la contraseña que se le envio al correo" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style5">Contraseña nueva:</td>
                        <td class="auto-style1">
        <asp:TextBox ID="txt_nuevaContra" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
        <asp:RequiredFieldValidator ID="rfv_nueva" runat="server" ControlToValidate="txt_nuevaContra" ErrorMessage="Debe igresar la nueva contraseña" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev_nueva" runat="server" ControlToValidate="txt_nuevaContra" ErrorMessage="La nueva contraseña no cumple con los estandares de seguridad de una clave segura" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style5">Verificar contraseña:</td>
                        <td class="auto-style1">
        <asp:TextBox ID="txt_verificarNuevaContra" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style11"><asp:RequiredFieldValidator ID="rfv_verificar" runat="server" ControlToValidate="txt_verificarNuevaContra" ErrorMessage="Debe igresar la nueva contraseña nuevamente para validar" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="4">
        <asp:Button ID="btn_realizar" runat="server" OnClick="Button1_Click" Text="Cambiar contraseña" Width="198px" />&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style1" colspan="3">
        <asp:Label ID="lbl_mensaje" runat="server" CssClass="auto-style3"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
                        </td>
                    </tr>
                </table>
           </blockquote>
        </div>
            </section> 
    </form>
    <%--    p ie de pagina --%>
       <!--#include virtual="/menu/footer.txt" -->
</body>
</html>
