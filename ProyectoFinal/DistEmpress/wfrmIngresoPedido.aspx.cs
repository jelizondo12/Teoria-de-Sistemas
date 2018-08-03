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
                
                if (!Page.IsPostBack)
                {
                    List<sp_Proyecto_CargarUsuarios_Result> resultados = Logica.CargarUsuarios();

                    this.ddl_usuario.DataTextField = "Nombre_usuario";
                    this.ddl_usuario.DataValueField = "Nombre_usuario";
                    this.ddl_usuario.DataSource = resultados;
                    this.ddl_usuario.DataBind();

                    List<sp_Proyecto_Reporte_Clientes_Result> resultados2 = Logica.ObtenerClientes(0, "");

                    this.ddl_clientes.DataTextField = "CompanyName";
                    this.ddl_clientes.DataValueField = "CustomerID";
                    this.ddl_clientes.DataSource = resultados2;
                    this.ddl_clientes.DataBind();

                    
                }
                else
                {
                    dgv_inventario.DataSource = Logica.ObtenerInventario(0, 0);
                    dgv_inventario.DataBind();

                    if (lbl_numero_factura.Text!="")
                    {
                        List<sp_Proyecto_Reporte_Pedidos_Result> resultados3 = Logica.ObtenerPedidos(2, Convert.ToInt32(lbl_numero_factura.Text.Trim()));

                        this.dgv_carrito.DataSource = resultados3;
                        this.dgv_carrito.DataBind();
                    }  
                }
            }
            catch (Exception ex)
            {
                throw ex; 
            }
        }

        protected void ib_refresh_Click(object sender, ImageClickEventArgs e)
        {
            Regex Val = new Regex("[0-9]");
            if (txt_idpedido.Text != "")
            {
                List<sp_Proyecto_Reporte_Pedidos_Result> resultado = Logica.ObtenerPedidos(3, Convert.ToInt32(txt_idpedido.Text.Trim()));

                if (resultado.Count > 0)
                {
                    txt_idproducto.Text = resultado[0].ProductID.ToString();
                    lbl_productname.Text = resultado[0].ProductName;
                    lbl_category.Text = resultado[0].Category;
                    txt_cantidad.Text = resultado[0].Cantidad.ToString();
                    lbl_unitprice.Text = resultado[0].UnitPrice.ToString();
                    lbl_fechapedido.Text = resultado[0].FechaPedido.ToString();
                    ddl_usuario.SelectedValue = resultado[0].Usuario;
                }
            }
            else
            {
                if (Val.IsMatch(txt_idproducto.Text))
                {
                    Products Productos = new Products();

                    Productos.ProductID = Convert.ToInt32(txt_idproducto.Text.Trim());

                    List<sp_Proyecto_SeleccionarPedido_Result> resultados = Logica.SeleccionarPedido(Productos);

                    if (resultados.Count > 0)
                    {
                        lbl_productname.Text = resultados[0].ProductName;
                        lbl_category.Text = resultados[0].Category.ToString();
                        lbl_unitprice.Text = resultados[0].UnitPrice.ToString();
                        lbl_fechapedido.Text = DateTime.Now.ToString("dd/MM/yyyy");

                        lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                        lbl_mensaje.Text = "Producto Encontrado";
                    }
                    else
                    {

                        lbl_productname.Text = "";
                        lbl_category.Text = "";
                        lbl_unitprice.Text = "";
                        lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                        lbl_mensaje.Text = "Producto No existe";
                    }
                }
                else
                {
                    lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                    lbl_mensaje.Text = "El campo ProductID no puede ir vacío o tiene un formato incorrecto";
                }
            }
        }

        protected void ib_agregar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                Regex Val = new Regex("[0-9]");

                if(lbl_numero_factura.Text!="")
                {
                    if (Val.IsMatch(txt_idproducto.Text))
                    {

                        if (ddl_seleccionar.SelectedValue == "Registrar")
                        {
                            Pedidos Pedidos = new Pedidos();

                            Pedidos.num_factura = Convert.ToInt32(lbl_numero_factura.Text.Trim());
                            Pedidos.ProductID = Convert.ToInt32(txt_idproducto.Text.Trim());
                            Pedidos.ProductName = lbl_productname.Text.Trim();
                            Pedidos.Category = lbl_category.Text.Trim();
                            Pedidos.Cantidad = Convert.ToInt32(txt_cantidad.Text.Trim());
                            Pedidos.UnitPrice = Convert.ToDecimal(lbl_unitprice.Text.Trim());
                            Pedidos.FechaPedido = lbl_fechapedido.Text.Trim();
                            Pedidos.Usuario = ddl_usuario.Text.Trim();

                            List<sp_Proyecto_Reporte_Inventario_Result> resultado = Logica.ObtenerInventario(1, Convert.ToInt32(txt_idproducto.Text.Trim()));

                            if (resultado[0].UnitsInStock >= Convert.ToInt32(txt_cantidad.Text.Trim()))
                            {
                                Logica.AgregarPedido(Pedidos);
                                Logica.ActualizarInventario(0, Convert.ToInt32(txt_idproducto.Text.Trim()), Convert.ToInt32(txt_cantidad.Text.Trim()));
                                lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                                lbl_mensaje.Text = "Producto agregado al pedido";
                            }
                            else
                            {
                                lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                                lbl_mensaje.Text = "No se cuenta con suficicente producto en inventario para el pedido";
                            }

                        }
                        else if (ddl_seleccionar.SelectedValue == "Eliminar")
                        {

                            List<sp_Proyecto_Reporte_Inventario_Result> resultado = Logica.ObtenerInventario(0, Convert.ToInt32(txt_idproducto.Text.Trim()));

                            if (resultado.Count > 0)
                            {
                                Logica.EliminarPedido(Convert.ToInt32(txt_idpedido.Text.Trim()));
                                Logica.ActualizarInventario(1, Convert.ToInt32(txt_idproducto.Text.Trim()), Convert.ToInt32(txt_cantidad.Text.Trim()));

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
                        Response.Write("<script language=javascript>alert('El campo ProductID no puede ir vacío o tiene un formato incorrecto');</script>");
                    }
                }else
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

            Response.Redirect("wfrmFacturación.aspx?NumeroFactura=" + lbl_numero_factura.Text, false);
        }

        protected void ib_limpiar_Click(object sender, ImageClickEventArgs e)
        {
            txt_idpedido.Text = "";
            txt_idproducto.Text = "";
            lbl_productname.Text = "";
            lbl_category.Text = "";
            lbl_unitprice.Text = "";
            txt_cantidad.Text = "";
            lbl_fechapedido.Text = "";
            ddl_usuario.SelectedIndex = 0;

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
    }
}