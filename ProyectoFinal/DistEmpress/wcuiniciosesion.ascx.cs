using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*Agregar*/
using System.Net;
using System.Net.Mail;
using DistEmpress_BLL;
using Entidades;

namespace DistEmpress
{
    public partial class wcuiniciosesion : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }

        protected void btn_igresar_Click(object sender, EventArgs e)
        {
            try
            {
                Security usuario = new Security();

                usuario.Nombre_Usuario = inptxt_usuario.Value.Trim();
                usuario.clave = inptxt_clave.Value.Trim();

                List<sp_Proyecto_VerificarSesion_Result> resultados = Logica.VerificarSesion(usuario);

                /*Los resultados tienen que devolver usuario,contraseña,tipo de usuario*/

                if (resultados.Count > 0)
                { 
                    if(resultados[0].Clave_temporal==true)
                    {

                        Response.Redirect("wfrmRecuperacion_Clave.aspx?Identificacion="+resultados[0].Identificacion+"&ClaveActual="+ resultados[0].clave,false);
                    }
                    else
                    {
                        wfrmIndex re = new wfrmIndex();

                        Response.Write("<script language=javascript>alert('Credenciales Correctas....Bienvenido'"+resultados[0].Nombre_Usuario+");</script>");
                        Response.Redirect("wfrmIndex.aspx", false);
                        Session["perfil"] = resultados[0].TIPO_USUARIO;
                        Session["usuario"] = resultados[0].Nombre_Usuario;

                    }
                }
                else
                {

                    Response.Write("<script language=javascript>alert('Credenciales incorrectas');</script>");
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btn_registrar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("wfrmRegistroUsuario.aspx");
        }

        protected void lbl_recuperarClave_Click(object sender, EventArgs e)
        {
    
        }

        #region Metodos
        private string GenerarCodigo()
        {
            Random obj = new Random();
            string sCadena = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890";
            int longitud = sCadena.Length;
            char cletra;
            int nlongitud = 5;
            string sNuevacadena = string.Empty;
            for (int i = 0; i < nlongitud; i++)
            {
                cletra = sCadena[obj.Next(nlongitud)];
                sNuevacadena += cletra.ToString();
            }
            return sNuevacadena;
        }
        #endregion

        protected void lbtn_recuperar_Click(object sender, EventArgs e)
        {
            MailMessage correo = new MailMessage();//Instancia para crear el mensaje
            SmtpClient envio = new SmtpClient();//Instancia para configurr envio

            try
            {
                //Verifica que los campos  usuarios y clave 
                if (this.inptxt_usuario.Value.Trim().Length == 0)
                {
                    Response.Write("<script language=javascript>alert('Debe ingresar un usuario valido para enviar su contraseña al correo que esta registrado en el sistema');</script>");
                }
                else
                {
                    Security usuario = new Security();

                    usuario.Nombre_Usuario = inptxt_usuario.Value.Trim();

                    List<sp_Proyecto_VerificarSesion_Result> r = Logica.ObenerUsuarios(usuario);

                    if (r.Count > 0)
                    {
                        correo.Subject = "Recuperar contraseña del Sistema Empress";//Asunto del correo
                        string aux = GenerarCodigo();
                        correo.Body = "Su nueva contraseña es: " + aux;//Cuerpo del correo
                        correo.IsBodyHtml = true;//Establece si tiene fomrmato HTML
                        correo.Priority = MailPriority.Normal;//Estado de prioridad del correo
                        correo.From = new MailAddress("jc1144cr@gmail.com", "Restablecimiento de contraseña Empress");//Quien envia
                        correo.To.Add(new MailAddress(r[0].Correo));

                        envio.Host = "smtp.gmail.com";//Servidor de envio correo GMAIL
                        envio.Port = 25;//Puerto de salida de los correos
                        envio.EnableSsl = true;
                        envio.UseDefaultCredentials = false;
                        envio.Credentials = new NetworkCredential("jc1144cr@gmail.com", "Jaes1234");

                        try
                        {

                            Logica.ModificarContra(1, r[0].Identificacion, Logica.cifrarClave(aux));
                            envio.Send(correo);
                            lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                            lbl_mensaje.Text = "Correo enviado";
                        }
                        finally
                        {

                            correo.Dispose();
                        }
                    }
                    else
                    {
                        lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                        lbl_mensaje.Text = "El usuario no existe";
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void lbtn_recuperar_Click1(object sender, EventArgs e)
        {

        }
    }
}