using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*Agregar*/
using Entidades;

namespace DistEmpress
{
    public partial class wfrmIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                switch (Convert.ToChar(Session["perfil"]))
                {
                    case 'C':
                        usuario.Style.Add("display", "none");
                        ingresoPedido.Style.Add("display", "none");
                        consultas.Style.Add("display", "none");
                        break;
                    case 'V':
                        usuario.Style.Add("display", "none");
                        ingresoProducto.Style.Add("display", "none");
                        consultas.Style.Add("display", "none");
                        break;
                }
            }  
        }
    }
}