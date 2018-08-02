using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
/*Agregar*/
using System.Security.Cryptography;
using System.Data;
using DistEmpress_DAL;
using Entidades;

namespace DistEmpress_BLL
{
    public class Logica
    {
        #region Agregar

        public static bool AgregarProducto(Products Productos)
        {
            try
            {
                return DistEmpress_DAL.AccesoDatos.AgregarProducto(Productos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static bool AgregarPedido(Pedidos Pedidos)
        {
            try
            {
                return DistEmpress_DAL.AccesoDatos.AgregarPedido(Pedidos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static bool AgregarUsuario(USERS persona ,Security personaSecurity)
        {
            try
            {
                return AccesoDatos.AgregarUsuario(persona, personaSecurity);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static bool AgregarVenta(SALES venta)
        {
            try
            {
                return AccesoDatos.AgregarVenta(venta);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_ProyectoGenerarFactura_Result> GenerarFactura(BILLS factura)
        {
            try
            {
                return AccesoDatos.GenerarFactura(factura);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        #endregion

        #region Eliminar
        public static List<sp_ProyectoEliminarProducto_Result> EliminarProducto(Products Productos)
        {
            try
            {
                return AccesoDatos.EliminarProducto(Productos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_Proyecto_EliminarPedido_Result> EliminarPedido(int ID)
        {
            try
            {
                return AccesoDatos.EliminarPedido(ID);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static bool EliminarUsuario(USERS persona)
        {
            try
            {
                return AccesoDatos.EliminarUsuario(persona);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        #endregion

        #region Modificar
        public static List<sp_Proyecto_ModificarProducto_Result> AgregarProductoModificado(Products Productos)
        {
            try
            {
                return AccesoDatos.AgregarProductoModificado(Productos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_Proyecto_ModificarPedido_Result> AgregarPedidoModificado(Pedidos Pedidos)
        {
            try
            {
                return AccesoDatos.AgregarPedidoModificado(Pedidos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static bool ModificarContra(int opcion, int usuario, string contra)
        {
            try
            {
                return AccesoDatos.ModificarContra(opcion, usuario, contra);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_Proyecto_ActualizarInventario_Result> ActualizarInventario(int opcion,int ID, int cantidad)
        {
            try
            {
                return AccesoDatos.ActualizarInventario(opcion,ID, cantidad);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        #endregion

        #region Verificar

        public static List<sp_Proyecto_VerificarProductoModificar_Result> VerificarProductoModificar(Products Productos)
        {
            try
            {
                return AccesoDatos.VerificarProductoModificar(Productos);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static List<sp_Proyecto_VerificarUsuarioModificar_Result> VerificarUsuarioModificar(USERS persona)
        {
            try
            {
                return AccesoDatos.VerificarUsuarioModificar(persona);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static bool AgregarUsuarioModificado(USERS persona, Security personaSecurity)
        {
            try
            {
                return AccesoDatos.AgregarUsuarioModificado(persona, personaSecurity);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_Proyecto_VerificarSesion_Result> VerificarSesion(Security personaSecurity)
        {
            try
            {
                return AccesoDatos.VerificarSesion(personaSecurity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #region Obtener datos necesarios

        public static List<sp_Proyecto_CargarSupplier_Result> CargarSupplier()
        {
            try
            {
                return DistEmpress_DAL.AccesoDatos.CargarSupplier();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_Proyecto_CargarUsuarios_Result> CargarUsuarios()
        {
            try
            {
                return DistEmpress_DAL.AccesoDatos.CargarUsuarios();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public static List<sp_Proyecto_SeleccionarTablaPedidos_Result> SeleccionarTablaPedidos(Pedidos Pedidos)
        {
            try
            {
                return AccesoDatos.SeleccionarTablaPedidos(Pedidos);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static List<sp_Proyecto_SeleccionarPedido_Result> SeleccionarPedido(Products productos)
        {
            try
            {
                return AccesoDatos.SeleccionarPedido(productos);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static List<sp_Proyecto_VerificarSesion_Result> ObenerUsuarios(Security personaSecurity)
        {
            try
            {
                return AccesoDatos.ObenerUsuarios(personaSecurity);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion
        
        #region Reportería
        public static List<sp_Proyecto_Reporte_Clientes_Result> ObtenerClientes(int opcion, string ID)
        {
            try
            {
                return AccesoDatos.ObtenerClientes(opcion,ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<sp_Proyecto_Reporte_Proveedores_Result> ObtenerProveedores(int opcion, int ID)
        {
            try
            {
                return AccesoDatos.ObtenerProveedores(opcion, ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<sp_Proyecto_Reporte_Usuarios_Result> ObtenerUsuarios(int opcion, int ID)
        {
            try
            {
                return AccesoDatos.ObtenerUsuarios(opcion, ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<sp_Proyecto_Reporte_Pedidos_Result> ObtenerPedidos(int opcion, int ID)
        {
            try
            {
                return AccesoDatos.ObtenerPedidos(opcion, ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<sp_Proyecto_Reporte_Ventas_Result> ObtenerVentas(int opcion, int ID)
        {
            try
            {
                return AccesoDatos.ObtenerVentas(opcion, ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<sp_Proyecto_Reporte_Inventario_Result> ObtenerInventario(int opcion, int ID)
        {
            try
            {
                return AccesoDatos.ObtenerInventario(opcion, ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static List<sp_Proyecto_Reporte_Empleados_Result> ObtenerEmpleados(int opcion, int ID)
        {
            try
            {
                return AccesoDatos.ObtenerEmpleados(opcion, ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Metodos

        public static string generarnombreusuario(string nombre, string pApellido, string sApellido)
        {
            string nombreusuario = "";
            //se obtiene lñas ´primeras letras del dato almacenado en la variable, para generar un acronimo
            nombreusuario += nombre.Substring(0, 2);
            nombreusuario += pApellido.Substring(0, 2);
            nombreusuario += sApellido.Substring(0, 2);
            //el acronimo se poasa a mayuscula
            nombreusuario.ToUpper();
            //se retorna elacronimo como el nombre de usuario
            return nombreusuario;
        }

        public static string cifrarClave(string cadena)
        {
            byte[] llave;
            byte[] arreglo = UTF32Encoding.UTF8.GetBytes(cadena);
            byte[] resultado;

            // se inicia el cifrado del token en MDS
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            //se convierte el token a una cadena de bytes
            llave = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes("UAM-2017"));
            //se limpia el md5
            md5.Clear();

            //se inicia con el cifrado de la cadena en 3des
            TripleDESCryptoServiceProvider tripleDes = new TripleDESCryptoServiceProvider();
            //se ingresa la llave al algoritmo
            tripleDes.Key = llave;
            //se le indica al modo de criptogrtafia
            tripleDes.Mode = CipherMode.ECB;
            //se le indica que se va a trabajar con bytes
            tripleDes.Padding = PaddingMode.PKCS7;
            //e crea el encriptador de la cadena
            ICryptoTransform convertir = tripleDes.CreateEncryptor();
            //se encripta la cadena y se almacena en el arreglo
            resultado = convertir.TransformFinalBlock(arreglo, 0, arreglo.Length);
            //se retorna una cadena convertida a un string de base 64
            return Convert.ToBase64String(resultado, 0, resultado.Length);
        }

        #endregion
    }
}
