using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*Agregar*/
using DistEmpress_BLL;
using Entidades;


namespace DistEmpress
{
    public partial class wfrmRecuperacion_Clave : System.Web.UI.Page
    {
        string identificacion;
        string claveActual;
        protected void Page_Load(object sender, EventArgs e)
        {
       
        identificacion = Request.QueryString["Identificacion"];
        claveActual = Request.QueryString["ClaveActual"];      
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_contraActual.Text.Trim() == claveActual)
            {
                if (txt_nuevaContra.Text.Trim() == txt_verificarNuevaContra.Text.Trim())
                {
                    Logica.ModificarContra(0,Convert.ToInt32(identificacion), Logica.cifrarClave(txt_nuevaContra.Text.Trim()));

                    Response.Write("<script language=javascript>alert('La contraseña se cambio con exito');</script>");
                    Response.Redirect("wfrmInicioSesion.aspx", false);
                }
                else
                {
                    lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                    lbl_mensaje.Text = "Las nuevas contraseñas no son iguales";
                }
            }
            else
            {
                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                lbl_mensaje.Text = "Verifque contraseña actual(la clave temporal enviada al correo)";
            }
        }
    }
}