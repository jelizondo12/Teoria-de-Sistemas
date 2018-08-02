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
            switch(Convert.ToChar(Session["perfil"]))
            {
                case 'A':
                    Ventas.Style.Add("display", "none");
                    Compras.Style.Add("display", "none");
                    break;
                case 'C':
                    Admin.Style.Add("display", "none");
                    Compras.Style.Add("display", "none");
                    break;
                case 'V':
                    Admin.Style.Add("display", "none");
                    Compras.Style.Add("display", "none");
                    break;
            }
        }
    }
}