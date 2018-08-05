using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DistEmpress_BLL;
using Entidades;

namespace DistEmpress
{
    public partial class wfrmFacturación : System.Web.UI.Page
    {
        private string Numero_Factura;
        decimal Sub_total = 0;
        decimal Impuesto_ventas = 0;
        decimal Total_pagar = 0;
        protected void Page_Load(object sender, EventArgs e)
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
            try
            {
                this.Numero_Factura = Request.QueryString["NumeroFactura"];

                this.lbl_NumeroFactura.Text = Numero_Factura.ToString();

                List<sp_Proyecto_Reporte_Pedidos_Result> resultados = Logica.ObtenerPedidos(2, Convert.ToInt32(Numero_Factura));

                this.dgv_carrito.DataSource = resultados;
                this.dgv_carrito.DataBind();

                for (int i=0;i<resultados.Count;i++)
                {
                    Sub_total = (resultados[i].Cantidad*resultados[i].UnitPrice) + Sub_total;
                    Impuesto_ventas = Sub_total * Convert.ToDecimal(0.13);
                    Total_pagar = (Sub_total + Impuesto_ventas);
                }

                this.lbl_sub_total.Text = Convert.ToString(Sub_total);
                this.lbl_impuestoventas.Text = Convert.ToString(Impuesto_ventas);
                this.lbl_total.Text = Convert.ToString(Total_pagar);


            }
            catch (Exception ex)
            {
                throw ex;
                //MessageBox.Show(ex.Message);
            }
        }
        protected void ib_agregar_Click(object sender, ImageClickEventArgs e)
        {
            SALES venta = new SALES();

            venta.num_factura = Convert.ToInt32(lbl_NumeroFactura.Text.Trim());
            venta.Sub_total = Convert.ToInt32(lbl_sub_total.Text.Trim());
            venta.Impuesto_ventas = Convert.ToInt32(lbl_sub_total.Text.Trim());
            venta.Total_pagar = Convert.ToInt32(lbl_sub_total.Text.Trim());

            if(lbl_sub_total.Text!="" & lbl_impuestoventas.Text!="" & lbl_total.Text!="")
            {
                Logica.AgregarVenta(venta);

                Response.Write("<sript languaje=javascript>alert('Datos almacenados correctamente');</script>");
            }
        }
    }
}