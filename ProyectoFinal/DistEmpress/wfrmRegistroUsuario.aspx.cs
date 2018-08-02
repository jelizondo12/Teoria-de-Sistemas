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
    public partial class wfrmRegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Convert.ToChar(Session["perfil"]))
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

        protected void btn_realizar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Drop_accion.SelectedValue == "Registrar")
                {
                    USERS persona = new USERS();
                    Security personaSecurity = new Security();

                    persona.Identificacion = Convert.ToInt32(txt_ID.Text.Trim());
                    persona.Nombre = txt_nombre.Text.Trim();
                    persona.Primer_Apellido = txt_pApellido.Text.Trim();
                    persona.Segundo_Apellido = txt_sApellido.Text.Trim();
                    personaSecurity.Nombre_Usuario = Logica.generarnombreusuario(txt_nombre.Text.Trim(), txt_pApellido.Text.Trim(), txt_sApellido.Text.Trim());
                    lbl_usuario.Text = Convert.ToString(personaSecurity.Nombre_Usuario).Trim();
                    persona.Fecha_nacimiento = txt_fechaNacmiento.Text.Trim();
                    persona.Telefono = Convert.ToInt32(txt_telefono.Text.Trim());
                    persona.Correo = txt_correo.Text.Trim();
                    persona.Direccion = txt_direccion.Text.Trim();
                    personaSecurity.clave = Logica.cifrarClave(txt_clave.Text.Trim());
                    personaSecurity.TIPO_USUARIO = Convert.ToString(Drop_tipoUsuario.SelectedValue.ToString());
                    persona.CREATEDATE = DateTime.Now;
                    personaSecurity.Token = "UAM_2017";

                    List<sp_Proyecto_VerificarUsuarioModificar_Result> resultados = Logica.VerificarUsuarioModificar(persona);

                    if (resultados.Count > 0)
                    {
                        txt_ID.Text = "";
                        txt_nombre.Text = "";
                        txt_pApellido.Text = "";
                        txt_sApellido.Text = "";
                        lbl_usuario.Text = "[lbl_usuario]";
                        txt_telefono.Text = "";
                        txt_fechaNacmiento.Text = "";
                        txt_direccion.Text = "";
                        txt_correo.Text = "";
                        txt_clave.Text = "";
                        Drop_accion.SelectedIndex = 0;
                        Drop_accion.SelectedIndex = 0;

                        lbl_accion.ForeColor = System.Drawing.Color.Red;
                        lbl_accion.Text = "Este numero de Identificación ya esta registrado en el sistema";
                    }
                    else
                    {
                        Logica.AgregarUsuario(persona, personaSecurity);

                        txt_ID.Text = "";
                        txt_nombre.Text = "";
                        txt_pApellido.Text = "";
                        txt_sApellido.Text = "";
                        lbl_usuario.Text = "[lbl_usuario]";
                        txt_telefono.Text = "";
                        txt_fechaNacmiento.Text = "";
                        txt_direccion.Text = "";
                        txt_correo.Text = "";
                        txt_clave.Text = "";
                        Drop_accion.SelectedIndex = 0;
                        Drop_accion.SelectedIndex = 0;

                        lbl_accion.ForeColor = System.Drawing.Color.Green;
                        lbl_accion.Text = "Usuario agregado";
                    }
                   
                }
                else if (Drop_accion.SelectedValue == "Modificar")
                {         
                    USERS persona = new USERS();
                    Security personaSecurity = new Security();

                    persona.Identificacion = Convert.ToInt32(txt_ID.Text.Trim());
                    persona.Nombre = txt_nombre.Text.Trim();
                    persona.Primer_Apellido = txt_pApellido.Text.Trim();
                    persona.Segundo_Apellido = txt_sApellido.Text.Trim();
                    personaSecurity.Nombre_Usuario = Logica.generarnombreusuario(txt_nombre.Text.Trim(), txt_pApellido.Text.Trim(), txt_sApellido.Text.Trim());
                    lbl_usuario.Text = Convert.ToString(personaSecurity.Nombre_Usuario).Trim();
                    persona.Fecha_nacimiento = txt_fechaNacmiento.Text.Trim();
                    persona.Telefono = Convert.ToInt32(txt_telefono.Text.Trim());
                    persona.Correo = txt_correo.Text.Trim();
                    persona.Direccion = txt_direccion.Text.Trim();
                    personaSecurity.clave = Logica.cifrarClave(txt_clave.Text.Trim());
                    personaSecurity.TIPO_USUARIO = Convert.ToString(Drop_tipoUsuario.SelectedValue.ToString());
                    persona.CREATEDATE = DateTime.Now;
                    personaSecurity.Token = "UAM_2017";


                    List<sp_Proyecto_VerificarUsuarioModificar_Result> resultados = Logica.VerificarUsuarioModificar(persona);

                    if (resultados.Count > 0)
                    {

                        Logica.AgregarUsuarioModificado(persona, personaSecurity);

                        txt_ID.Text = "";
                        txt_nombre.Text = "";
                        txt_pApellido.Text = "";
                        txt_sApellido.Text = "";
                        lbl_usuario.Text = "[lbl_usuario]";
                        txt_telefono.Text = "";
                        txt_fechaNacmiento.Text = "";
                        txt_direccion.Text = "";
                        txt_correo.Text = "";
                        txt_clave.Text = "";
                        Drop_accion.SelectedIndex = 0;
                        Drop_accion.SelectedIndex = 0;

                        lbl_accion.ForeColor = System.Drawing.Color.Green;
                        lbl_accion.Text = "Usuario Modificado";
                    }
                    else
                    {
                        lbl_accion.ForeColor = System.Drawing.Color.Red;
                        lbl_accion.Text = "Usuario No Existe";
                    } 
                }
                else if (Drop_accion.SelectedValue == "Eliminar")
                {
                    USERS persona = new USERS();

                    persona.Identificacion = Convert.ToInt32(txt_ID.Text.Trim());

                    List<sp_Proyecto_VerificarUsuarioModificar_Result> resultados = Logica.VerificarUsuarioModificar(persona);

                    if(resultados.Count>0)
                    {
                        Logica.EliminarUsuario(persona);

                        lbl_accion.ForeColor = System.Drawing.Color.Red;
                        lbl_accion.Text = "Usuario Eliminado";
                    }else
                    {
                        lbl_accion.ForeColor = System.Drawing.Color.Red;
                        lbl_accion.Text = "Usuario No Existe";
                    }
                }
                else
                {
                    lbl_accion.ForeColor = System.Drawing.Color.Red;
                    lbl_accion.Text = "Debe seleccionar la acción a realizar";
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if(txt_ID.Text!="")
                {
                    USERS persona = new USERS();

                    if (Drop_accion.SelectedValue == "Modificar" || Drop_accion.SelectedValue == "Eliminar")
                    {
                        persona.Identificacion = Convert.ToInt32(txt_ID.Text.Trim());

                        List<sp_Proyecto_VerificarUsuarioModificar_Result> resultados = Logica.VerificarUsuarioModificar(persona);

                        /*Los resultados tienen que devolver usuario,contraseña,tipo de usuario*/

                        if (resultados.Count > 0)
                        {
                            txt_nombre.Text = resultados[0].Nombre;
                            txt_pApellido.Text = resultados[0].Primer_Apellido;
                            txt_sApellido.Text = resultados[0].Segundo_Apellido;
                            lbl_usuario.Text = resultados[0].Nombre_Usuario;
                            txt_fechaNacmiento.Text = resultados[0].Fecha_nacimiento;
                            txt_telefono.Text = resultados[0].Telefono.ToString();
                            txt_correo.Text = resultados[0].Correo;
                            txt_direccion.Text = resultados[0].Direccion;

                           // Drop_tipoUsuario.SelectedValue = resultados[0].TIPO_USUARIO;

                            if (resultados[0].TIPO_USUARIO == "A")
                            {
                                Drop_tipoUsuario.SelectedValue = "A";
                            }
                            else if (resultados[0].TIPO_USUARIO == "V")
                            {
                                Drop_tipoUsuario.SelectedValue = "V";
                            }
                            else
                            {
                                Drop_tipoUsuario.SelectedValue = "C";
                            }
                            lbl_accion.ForeColor = System.Drawing.Color.Green;
                            lbl_accion.Text = "Usuario encontrado";
                        }
                        else
                        {
                            txt_ID.Text = "";
                            txt_nombre.Text = "";
                            txt_pApellido.Text = "";
                            txt_sApellido.Text = "";
                            lbl_usuario.Text = "[lbl_usuario]";
                            txt_telefono.Text = "";
                            txt_fechaNacmiento.Text = "";
                            txt_direccion.Text = "";
                            txt_correo.Text = "";
                            Drop_tipoUsuario.SelectedIndex = 0;

                            lbl_accion.ForeColor = System.Drawing.Color.Red;
                            lbl_accion.Text = "Usuario No existe";
                        }
                    }
                    else if (Drop_accion.SelectedValue == "Seleccione")
                    {
                        lbl_accion.ForeColor = System.Drawing.Color.Red;
                        lbl_accion.Text = "Debe seleccionar la acción a realizar";
                    }
                    else
                    {
                        txt_ID.Text = "";
                        txt_nombre.Text = "";
                        txt_pApellido.Text = "";
                        txt_sApellido.Text = "";
                        lbl_usuario.Text = "[lbl_usuario]";
                        txt_telefono.Text = "";
                        txt_fechaNacmiento.Text = "";
                        txt_direccion.Text = "";
                        txt_correo.Text = "";
                        Drop_tipoUsuario.SelectedIndex = 0;

                        lbl_accion.ForeColor = System.Drawing.Color.Red;
                        lbl_accion.Text = "Acción incorrecta";
                    }
                }else
                {
                    lbl_accion.ForeColor = System.Drawing.Color.Red;
                    lbl_accion.Text = "Debe Igresar la Identificación";
                }  
            }
            catch (Exception ex)
            {
                throw ex;
            }
                   
        }   
    }
}