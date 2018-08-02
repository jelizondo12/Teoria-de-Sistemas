using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*Agregar*/
using Entidades;
using DistEmpress_BLL;
using System.Drawing;

namespace DistEmpress
{
    public partial class wfrmConsultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_mensaje.Text = "";
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

        protected void ibtnBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                switch (ddl_opcion.SelectedValue)
                {
                    case "Seleccione":
                        lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                        lbl_mensaje.Text = "Debe de selecciona alguna acción";
                        break;
                    case "Clientes":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerClientes(1, txt_buscar.Text.Trim());
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se encontró ningún Cliente con esa ID";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerClientes(0, "");
                            dgv_reportes.DataBind();
                        }

                        break;
                    case "Proveedores":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerProveedores(1, Convert.ToInt32(txt_buscar.Text.Trim()));
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se encontró ningún Proveedor con esa ID";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerProveedores(0, 0);
                            dgv_reportes.DataBind();
                        }
                        break;
                    case "Usuarios":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerUsuarios(1, Convert.ToInt32(txt_buscar.Text.Trim()));
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se encontró ningún Usuario con esa ID";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerUsuarios(0, 0);
                            dgv_reportes.DataBind();
                        }
                        break;
                    case "Pedidos":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerPedidos(1, Convert.ToInt32(txt_buscar.Text.Trim()));
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se encontró ningún pedido con ese COD";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerPedidos(0, 0);
                            dgv_reportes.DataBind();
                        }
                        break;
                    case "Ventas":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerVentas(1, Convert.ToInt32(txt_buscar.Text.Trim()));
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se encontró ninguna Factura con ese NUM";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerVentas(0, 0);
                            dgv_reportes.DataBind();
                        }
                        break;
                    case "Inventario":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerInventario(1, Convert.ToInt32(txt_buscar.Text.Trim()));
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se econtró ningún producto con esa COD";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerInventario(0, 0);
                            dgv_reportes.DataBind();
                        }
                        break;
                    case "Empleados":
                        if (txt_buscar.Text != "")
                        {
                            dgv_reportes.DataSource = Logica.ObtenerEmpleados(1, Convert.ToInt32(txt_buscar.Text.Trim()));
                            dgv_reportes.DataBind();
                            if (dgv_reportes.Rows.Count == 0)
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                                lbl_mensaje.Text = "No se encontró nungún empleado con esa ID";
                            }
                        }
                        else
                        {
                            dgv_reportes.DataSource = Logica.ObtenerEmpleados(0, 0);
                            dgv_reportes.DataBind();
                        }
                        break;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}