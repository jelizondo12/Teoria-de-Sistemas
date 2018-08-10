using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*agregar*/
using DistEmpress_BLL;
using Entidades;
using System.Text.RegularExpressions;
using System.Data;

namespace DistEmpress
{
    public partial class wfrmIngresoPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
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

                List<sp_Proyecto_Reporte_Clientes_Result> resultados = Logica.ObtenerClientes(0, "");

                this.ddl_clientes.DataTextField = "CompanyName";
                this.ddl_clientes.DataValueField = "CustomerID";
                this.ddl_clientes.DataSource = resultados;
                this.ddl_clientes.DataBind();

                List<sp_Proyecto_Reporte_Inventario_Result> resultados2 = Logica.ObtenerInventario(0,0);

                this.ddl_producto.DataTextField = "ProductName";
                this.ddl_producto.DataValueField = "ProductID";
                this.ddl_producto.DataSource = resultados2;
                this.ddl_producto.DataBind();

                txt_usuario.Text = Session["usuario"].ToString();
                this.dgv_carrito.Visible = false;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void ib_refresh_Click(object sender, ImageClickEventArgs e)
        {

                //List<sp_Proyecto_Reporte_Pedidos_Result> resultado = Logica.ObtenerPedidos(3, Convert.ToInt32(ddl_producto.SelectedValue.Trim()));

                //if (resultado.Count > 0)
                //{
                //    lbl_category.Text = resultado[0].Category;
                //    txt_cantidad.Value = resultado[0].Cantidad.ToString();
                //    lbl_unitprice.Text = resultado[0].UnitPrice.ToString();
                //    lbl_fechapedido.Text = resultado[0].FechaPedido.ToString();
                //}
        }

        protected void ib_agregar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (lbl_numero_factura.Text != "")
                {
                    if (ddl_seleccionar.SelectedValue == "Registrar")
                    {
                        Pedidos Pedidos = new Pedidos();

                        Pedidos.num_factura = Convert.ToInt32(lbl_numero_factura.Text.Trim());
                        Pedidos.ProductID = Convert.ToInt32(ddl_producto.SelectedValue.Trim());
                        Pedidos.ProductName = ddl_producto.SelectedItem.Text;
                        Pedidos.Category = lbl_category.Text.Trim();
                        Pedidos.Cantidad = Convert.ToInt32(txt_cantidad.Value.Trim());
                        Pedidos.UnitPrice = Convert.ToDecimal(lbl_unitprice.Text.Trim());
                        Pedidos.FechaPedido = lbl_fechapedido.Text.Trim();
                        Pedidos.Usuario = txt_usuario.Text.Trim();

                        List<sp_Proyecto_Reporte_Inventario_Result> resultado = Logica.ObtenerInventario(1, Convert.ToInt32(ddl_producto.SelectedValue.Trim()));

                        if (resultado[0].UnitsInStock >= Convert.ToInt32(txt_cantidad.Value.Trim()))
                        {
                            Logica.AgregarPedido(Pedidos);
                            Logica.ActualizarInventario(0, Convert.ToInt32(ddl_producto.SelectedValue.Trim()), Convert.ToInt32(txt_cantidad.Value.Trim()));
                            lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                            lbl_mensaje.Text = "Producto agregado al pedido";

                            refreshDataGridView();
                        }
                        else
                        {
                            lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                            lbl_mensaje.Text = "No se cuenta con suficicente producto en inventario para el pedido";
                        }

                    }else if (ddl_seleccionar.SelectedValue == "Eliminar" )
                    {

                        List<sp_Proyecto_Reporte_Inventario_Result> resultado = Logica.ObtenerInventario(0, Convert.ToInt32(ddl_producto.SelectedValue.Trim()));

                        if (resultado.Count > 0)
                        {
                            Logica.EliminarPedido(Convert.ToInt32(txt_idpedido.Text.Trim()));
                            Logica.ActualizarInventario(1, Convert.ToInt32(ddl_producto.SelectedValue.Trim()), Convert.ToInt32(txt_cantidad.Value.Trim()));

                            refreshDataGridView();

                            Response.Write("<script language=javascript>alert('Pedido Eliminado');</script>");
                        }
                    }else if(ddl_seleccionar.SelectedValue == "Modificar")
                    {
                        List<sp_Proyecto_Reporte_Inventario_Result> resultado = Logica.ObtenerInventario(0, Convert.ToInt32(ddl_producto.SelectedValue.Trim()));

                        if (resultado.Count > 0)
                        {
                            Logica.EliminarPedido(Convert.ToInt32(txt_idpedido.Text.Trim()));
                            Logica.ActualizarInventario(1, Convert.ToInt32(ddl_producto.SelectedValue.Trim()), Convert.ToInt32(txt_cantidad.Value.Trim()));

                            refreshDataGridView();

                            Response.Write("<script language=javascript>alert('Pedido Eliminado');</script>");
                        }
                    }
                    else if (ddl_seleccionar.SelectedValue == "Seleccionar")
                    {
                        Response.Write("<script language=javascript>alert('Debe Seleccionar un opción valida');</script>");
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Debe de generar el numero de factura antes de hacer cualquier acción');</script>");
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(lbl_numero_factura.Text != "" && lbl_numero_factura.Text != null)
            {
                Response.Redirect("wfrmFacturación.aspx?NumeroFactura=" + lbl_numero_factura.Text, false);
            }else{
                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                lbl_mensaje.Text = "Primero debe generar el número de factura";
            }
            
        }

        protected void ib_limpiar_Click(object sender, ImageClickEventArgs e)
        {
            txt_idpedido.Text = "";
            lbl_category.Text = "";
            lbl_unitprice.Text = "";
            txt_cantidad.Value = "";
            lbl_fechapedido.Text = "";
            ddl_seleccionar.SelectedIndex = 0;
            ddl_clientes.SelectedIndex = 0;
            ddl_producto.SelectedIndex = 0;

            lbl_mensaje.ForeColor = System.Drawing.Color.Green;
            lbl_mensaje.Text = "Limpieza Realizada";
        }

        protected void btn_generarFactura_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                BILLS factura = new BILLS();

                factura.CustumerID = ddl_clientes.SelectedValue.Trim().ToString();
                factura.fecha = Convert.ToDateTime(DateTime.Now.ToLongTimeString());

                List<sp_ProyectoGenerarFactura_Result> numero_factura = Logica.GenerarFactura(factura);

                lbl_numero_factura.Text = Convert.ToString(numero_factura[0].num_factura);
                ddl_clientes.Enabled = false;
                btn_generarFactura.Enabled = false;
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        protected void refreshDataGridView()
        {
            List<sp_Proyecto_Reporte_Pedidos_Result> resultados3 = Logica.ObtenerPedidos(2, Convert.ToInt32(lbl_numero_factura.Text.Trim()));

            if (resultados3.Count > 0)
            {
                this.dgv_carrito.Visible = true;

                this.dgv_carrito.DataSource = resultados3;
                this.dgv_carrito.DataBind();
            }
            else
            {
                this.dgv_carrito.Visible = false;
            }
        }
    }
}