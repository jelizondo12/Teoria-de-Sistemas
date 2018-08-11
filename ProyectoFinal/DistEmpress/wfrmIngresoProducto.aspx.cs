using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*Agregar*/
using Entidades;
using DistEmpress_BLL;

namespace DistEmpress
{
       public partial class wfrmIngresoProducto : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
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
                    List<sp_Proyecto_CargarSupplier_Result> resultados = Logica.CargarSupplier();

                    this.ddl_supplier.DataTextField = "CompanyName";
                    this.ddl_supplier.DataValueField = "SupplierID";
                    this.ddl_supplier.DataSource = resultados;
                    this.ddl_supplier.DataBind();
                }   
            }
            catch (Exception ex)
            {
                throw ex; //MessageBox.Show(ex.Message);
            }
        }
        

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddl_Seleccion.SelectedValue == "Registrar")
                {
                    Products Productos = new Products();

                    Productos.ProductID = Convert.ToInt32(txt_productid.Text.Trim());
                    Productos.ProductName = txt_productname.Text.Trim();
                    Productos.SupplierID = Convert.ToInt32(ddl_supplier.SelectedValue);
                    Productos.CategoryID = Convert.ToInt32(ddl_category.SelectedValue);
                    Productos.QuantityPerUnit = txt_quantityperunit.Text.Trim();
                    Productos.UnitPrice = Convert.ToDecimal(txt_unitprice.Text.Trim());
                    Productos.UnitsInStock = Convert.ToInt16(txt_unitsinstock.Text.Trim());
                    Productos.UnitsOnOrder = Convert.ToInt16(txt_unitsonorder.Text.Trim());
                    Productos.ReorderLevel = Convert.ToInt16(txt_reorderlevel.Text.Trim());
                    Productos.Discontinued = ddl_discontinued.SelectedValue;
                    Productos.PRODUCT_STATUS = ddl_productstatus.Text.Trim();

                    Logica.AgregarProducto(Productos);

                    Response.Write("<script language=javascript>alert('Producto Agregado');</script>");

                    txt_productid.Text = "";
                    txt_productname.Text = "";
                    ddl_supplier.SelectedIndex = 1;
                    ddl_category.SelectedValue = "10";
                    txt_quantityperunit.Text = "";
                    txt_unitprice.Text = "";
                    txt_unitsinstock.Text = "";
                    txt_unitsonorder.Text = "";
                    txt_reorderlevel.Text = "";
                    ddl_discontinued.SelectedValue = "1";
                    ddl_productstatus.SelectedValue = "1";

                }
                else if (ddl_Seleccion.SelectedValue == "Eliminar")
                {
                    Products Productos = new Products();

                    Productos.ProductID = Convert.ToInt32(txt_productid.Text.Trim());

                    Logica.EliminarProducto(Productos);

                    Response.Write("<script language=javascript>alert('Procto Eliminado');</script>");

                }

                else if (ddl_Seleccion.SelectedValue == "Modificar")
                {
                    Products Productos = new Products();

                    Productos.ProductID = Convert.ToInt32(txt_productid.Text.Trim());
                    Productos.ProductName = txt_productname.Text.Trim();
                    Productos.SupplierID = Convert.ToInt32(ddl_supplier.Text.Trim());
                    Productos.CategoryID = Convert.ToInt32(ddl_category.Text.Trim());
                    Productos.QuantityPerUnit = txt_quantityperunit.Text.Trim();
                    Productos.UnitPrice = Convert.ToDecimal(txt_unitprice.Text.Trim());
                    Productos.UnitsInStock = Convert.ToInt16(txt_unitsinstock.Text.Trim());
                    Productos.UnitsOnOrder = Convert.ToInt16(txt_unitsonorder.Text.Trim());
                    Productos.ReorderLevel = Convert.ToInt16(txt_reorderlevel.Text.Trim());
                    Productos.Discontinued = ddl_discontinued.Text.Trim();
                    Productos.PRODUCT_STATUS = ddl_category.Text.Trim();

                    Logica.AgregarProductoModificado(Productos);

                    txt_productid.Text = "";
                    txt_productname.Text = "";
                    ddl_supplier.SelectedValue = "1";
                    ddl_category.SelectedValue = "10";
                    txt_quantityperunit.Text = "";
                    txt_unitprice.Text = "";
                    txt_unitsinstock.Text = "";
                    txt_unitsonorder.Text = "";
                    txt_reorderlevel.Text = "";
                    ddl_discontinued.SelectedValue = "1";
                    ddl_productstatus.SelectedValue = "1";

                    Response.Write("<script language=javascript>alert('Producto Modificado');</script>");

                }
                else if(ddl_Seleccion.SelectedValue == "Seleccione")
                {
                    lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                    lbl_mensaje.Text = "Debe seleccionar alguna opcion valida";
                }
            }
            catch (Exception ex)
            {
                  throw ex;
            }
        }

        protected void ib_refrescar_Click(object sender, ImageClickEventArgs e)
        {
            if (txt_productid.Text != "")
            {
                Products Productos = new Products();

                Productos.ProductID = Convert.ToInt32(txt_productid.Text.Trim());

                List<sp_Proyecto_VerificarProductoModificar_Result> resultados = Logica.VerificarProductoModificar(Productos);

                if (resultados.Count > 0)
                {
                    txt_productname.Text = resultados[0].ProductName;
                    ddl_supplier.SelectedValue = resultados[0].SupplierID.ToString();
                    ddl_category.SelectedValue = resultados[0].CategoryID.ToString();
                    txt_unitprice.Text = resultados[0].UnitPrice.ToString();
                    txt_unitsinstock.Text = resultados[0].UnitsInStock.ToString();
                    txt_reorderlevel.Text = resultados[0].ReorderLevel.ToString();
                    ddl_productstatus.SelectedValue = resultados[0].PRODUCT_STATUS;

                    if (resultados[0].PRODUCT_STATUS == "A")
                    {
                        ddl_productstatus.SelectedValue = "A";
                    }
                    else
                    {
                        ddl_productstatus.SelectedValue = "I";
                    }

                    lbl_mensaje.ForeColor = System.Drawing.Color.Green;
                    lbl_mensaje.Text = "Producto Encontrado";
                }
                else
                {

                    txt_productname.Text = "";
                    ddl_supplier.SelectedIndex = 1;
                    ddl_category.SelectedValue = "10";
                    txt_quantityperunit.Text = "";
                    txt_unitprice.Text = "";
                    txt_unitsinstock.Text = "";
                    txt_unitsonorder.Text = "";
                    txt_reorderlevel.Text = "";
                    ddl_discontinued.SelectedValue = "1";
                    ddl_productstatus.SelectedValue = "1";
                    lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                    lbl_mensaje.Text = "Producto No existe";
                }
            }
            else
            {
                lbl_mensaje.ForeColor = System.Drawing.Color.Red;
                lbl_mensaje.Text = "El campo ProductID no puede ir vacío";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("wfrmInventario.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            txt_productid.Text = "";
            txt_productname.Text = "";
            ddl_supplier.SelectedValue = "1";
            ddl_category.SelectedValue = "10";
            txt_quantityperunit.Text = "";
            txt_unitprice.Text = "";
            txt_unitsinstock.Text = "";
            txt_unitsonorder.Text = "";
            txt_reorderlevel.Text = "";
            ddl_discontinued.SelectedValue = "1";
            ddl_productstatus.SelectedValue = "1";


            Response.Write("<script language=javascript>alert('Limpieza realizada');</script>");
        }
    }
    }
