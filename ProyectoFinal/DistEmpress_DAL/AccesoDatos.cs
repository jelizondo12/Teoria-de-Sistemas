using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
/*Agregar*/
using System.Data;
using System.Security.Cryptography;
using Entidades;
using System.Data.SqlClient;
using System.Web;

namespace DistEmpress_DAL
{
    public class AccesoDatos
    {
        #region Agregar
        public static bool AgregarProducto(Products Productos)
        {
            NorthwindEntities contexto = null;

            try
            {
                contexto = new NorthwindEntities();

                contexto.Products.Add(Productos);
                contexto.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }

        public static bool AgregarPedido(Pedidos Pedidos)
        {
            NorthwindEntities contexto = null;

            try
            {
                contexto = new NorthwindEntities();

                contexto.Pedidos.Add(Pedidos);
                contexto.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }

        public static bool AgregarUsuario(USERS persona, Security personaSecurity)
        {
            NorthwindEntities contexto = null;
            //NorthwindEntities contexto2 = null;

            try
            {
                contexto = new NorthwindEntities();

                contexto.sp_Proyecto_InsertarUsuario(persona.Identificacion, persona.Nombre, persona.Primer_Apellido, persona.Segundo_Apellido, persona.Fecha_nacimiento, persona.Telefono, persona.Correo, persona.Direccion, persona.CREATEDATE);
                contexto.sp_Proyecto_InsertarUsuarioSecurity(persona.Identificacion,personaSecurity.Nombre_Usuario,personaSecurity.clave,personaSecurity.TIPO_USUARIO,personaSecurity.Token);

                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }

        public static bool AgregarVenta(SALES venta)
        {
            NorthwindEntities contexto = null;

            try
            {
                contexto = new NorthwindEntities();

                contexto.SALES.Add(venta);
                contexto.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }

        public static List<sp_ProyectoGenerarFactura_Result> GenerarFactura(BILLS factura)
        {
            NorthwindEntities contexto = null;
            List<sp_ProyectoGenerarFactura_Result> resultados =
                                        new List<sp_ProyectoGenerarFactura_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_ProyectoGenerarFactura(factura.CustumerID,factura.fecha).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_ProyectoGenerarFactura_Result r = new sp_ProyectoGenerarFactura_Result();

                        //se asigna valor de consulta en instancia simple
                        r.num_factura = item.num_factura;
                        r.CustumerID = item.CustumerID;
                        r.fecha = item.fecha;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }
        #endregion

        #region Modificar

        public static List<sp_Proyecto_ModificarProducto_Result> AgregarProductoModificado(Products productos)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_ModificarProducto_Result> resultados =
                                        new List<sp_Proyecto_ModificarProducto_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_ModificarProducto
                    (productos.ProductID,
                    productos.ProductName,
                    productos.SupplierID,
                    productos.CategoryID,
                    productos.QuantityPerUnit,
                    productos.UnitPrice,
                    productos.UnitsInStock,
                    productos.UnitsOnOrder,
                    productos.ReorderLevel,
                    productos.Discontinued,
                    productos.PRODUCT_STATUS
                    ).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_ModificarProducto_Result r = new sp_Proyecto_ModificarProducto_Result();

                        //se asigna valor de consulta en instancia simple

                        r.ProductName = item.ProductName;
                        r.SupplierID = item.SupplierID;
                        r.CategoryID = item.CategoryID;
                        r.UnitPrice = item.UnitPrice;
                        r.UnitsInStock = item.UnitsInStock;
                        r.ReorderLevel = item.ReorderLevel;
                        r.PRODUCT_STATUS = item.PRODUCT_STATUS;

                        resultados.Add(r);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static bool AgregarUsuarioModificado(USERS persona, Security personaSecurity)
        {
            NorthwindEntities contexto = null;
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                contexto.sp_Proyecto_ModificarUsuario
                    (persona.Identificacion,
                    persona.Nombre,
                    persona.Primer_Apellido,
                    persona.Segundo_Apellido,
                    personaSecurity.Nombre_Usuario,
                    persona.Fecha_nacimiento,
                    persona.Telefono,
                    persona.Correo,
                    persona.Direccion,
                    personaSecurity.clave,
                    personaSecurity.TIPO_USUARIO,
                    persona.CREATEDATE,
                    personaSecurity.Token
                    );
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static List<sp_Proyecto_ModificarPedido_Result> AgregarPedidoModificado(Pedidos Pedidos)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_ModificarPedido_Result> resultados =
                                        new List<sp_Proyecto_ModificarPedido_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_ModificarPedido
                    (Pedidos.IdPedido,
                    Pedidos.ProductID,
                    Pedidos.ProductName,
                    Pedidos.Category,
                    Pedidos.Cantidad,
                    Pedidos.UnitPrice,
                    Pedidos.FechaPedido,
                    Pedidos.Usuario
                    ).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_ModificarPedido_Result r = new sp_Proyecto_ModificarPedido_Result();

                        //se asigna valor de consulta en instancia simple

                        r.ProductID = item.ProductID;
                        r.ProductName = item.ProductName;
                        r.Category = item.Category;
                        r.Cantidad = item.Cantidad;
                        r.UnitPrice = item.UnitPrice;
                        r.FechaPedido = item.FechaPedido;
                        r.Usuario = item.Usuario;


                        resultados.Add(r);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static bool ModificarContra(int opcion, int usuario, string contra)
        {
            NorthwindEntities contexto = null;
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_ModificarContra(opcion, usuario, contra);

                return true;
            }
            catch
            {
                return false;
            }
        }

        public static List<sp_Proyecto_ActualizarInventario_Result> ActualizarInventario(int opcion,int ID, int cantidad)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_ActualizarInventario_Result> resultados =
                                        new List<sp_Proyecto_ActualizarInventario_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_ActualizarInventario(opcion,ID, cantidad).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_ActualizarInventario_Result r = new sp_Proyecto_ActualizarInventario_Result();

                        //se asigna valor de consulta en instancia simple
                        r.ProductID = item.ProductID;
                        r.ProductName = item.ProductName;
                        r.UnitPrice = item.UnitPrice;
                        r.UnitsInStock = item.UnitsInStock;
                        r.ReorderLevel = item.ReorderLevel;
                        r.PRODUCT_STATUS = item.PRODUCT_STATUS;
                        r.UnitsOnOrder = item.UnitsOnOrder;
                        r.QuantityPerUnit = item.QuantityPerUnit;
                        r.Discontinued = item.Discontinued;

                        resultados.Add(r);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        #endregion

        #region Verificar

        public static List<sp_Proyecto_VerificarProductoModificar_Result> VerificarProductoModificar(Products Productos)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_VerificarProductoModificar_Result> resultados =
                                        new List<sp_Proyecto_VerificarProductoModificar_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_VerificarProductoModificar(Productos.ProductID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_VerificarProductoModificar_Result r = new sp_Proyecto_VerificarProductoModificar_Result();

                        //se asigna valor de consulta en instancia simple
                        r.ProductName = item.ProductName;
                        r.SupplierID = item.SupplierID;
                        r.CategoryID = item.CategoryID;
                        r.UnitPrice = item.UnitPrice;
                        r.UnitsInStock = item.UnitsInStock;
                        r.ReorderLevel = item.ReorderLevel;
                        r.PRODUCT_STATUS = item.PRODUCT_STATUS;
                        r.UnitsOnOrder = item.UnitsOnOrder;
                        r.QuantityPerUnit = item.QuantityPerUnit;
                        r.Discontinued = item.Discontinued;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static List<sp_Proyecto_VerificarSesion_Result> VerificarSesion(Security personaSecurity)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_VerificarSesion_Result> resultados =
                                        new List<sp_Proyecto_VerificarSesion_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_VerificarSesion(personaSecurity.Nombre_Usuario).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_VerificarSesion_Result r = new sp_Proyecto_VerificarSesion_Result();

                        //se asigna valor de consulta en instancia simple
                        r.Nombre_Usuario = item.Nombre_Usuario;
                        r.Clave_temporal = item.Clave_temporal;
                        r.Identificacion = item.Identificacion;
                        r.TIPO_USUARIO = item.TIPO_USUARIO;

                        if (personaSecurity.clave == descifrar(item.clave))
                        {
                            r.clave = personaSecurity.clave;
                            resultados.Add(r);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static List<sp_Proyecto_VerificarUsuarioModificar_Result> VerificarUsuarioModificar(USERS persona)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_VerificarUsuarioModificar_Result> resultados =
                                        new List<sp_Proyecto_VerificarUsuarioModificar_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_VerificarUsuarioModificar(persona.Identificacion).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_VerificarUsuarioModificar_Result r = new sp_Proyecto_VerificarUsuarioModificar_Result();

                        //se asigna valor de consulta en instancia simple
                        r.Nombre_Usuario = item.Nombre_Usuario;
                        r.Nombre = item.Nombre;
                        r.Primer_Apellido = item.Primer_Apellido;
                        r.Segundo_Apellido = item.Segundo_Apellido;
                        r.Telefono = item.Telefono;
                        r.TIPO_USUARIO = item.TIPO_USUARIO;
                        r.Fecha_nacimiento = item.Fecha_nacimiento;
                        r.Direccion = item.Direccion;
                        r.Correo = item.Correo;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }
        #endregion

        #region Eliminar
        public static List<sp_ProyectoEliminarProducto_Result> EliminarProducto(Products Productos)
        {
            NorthwindEntities contexto = null;
            List<sp_ProyectoEliminarProducto_Result> resultados =
                                        new List<sp_ProyectoEliminarProducto_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_ProyectoEliminarProducto(Productos.ProductID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_ProyectoEliminarProducto_Result r = new sp_ProyectoEliminarProducto_Result();

                        //se asigna valor de consulta en instancia simple
                        r.ProductID = item.ProductID;

                        resultados.Add(r);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static List<sp_Proyecto_EliminarPedido_Result> EliminarPedido(int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_EliminarPedido_Result> resultados =
                                        new List<sp_Proyecto_EliminarPedido_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_EliminarPedido(ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_EliminarPedido_Result r = new sp_Proyecto_EliminarPedido_Result();

                        //se asigna valor de consulta en instancia simple
                        r.IdPedido = item.IdPedido;

                        resultados.Add(r);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static bool EliminarUsuario(USERS persona)
        {
            NorthwindEntities contexto = null;

            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_EliminarUsuario(persona.Identificacion);

                return true;
            }
            catch 
            {
                return false;
            }
        }
        #endregion

        #region Obtener Datos Necesarios
        public static List<sp_Proyecto_CargarSupplier_Result> CargarSupplier()
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_CargarSupplier_Result> resultados =
                                        new List<sp_Proyecto_CargarSupplier_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_CargarSupplier().ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_CargarSupplier_Result r = new sp_Proyecto_CargarSupplier_Result();

                        //se asigna valor de consulta en instancia simple
                        r.SupplierID = item.SupplierID;
                        r.CompanyName = item.CompanyName;


                        resultados.Add(r); //se agrega instancia simple en listado
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static List<sp_Proyecto_CargarUsuarios_Result> CargarUsuarios()
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_CargarUsuarios_Result> resultados =
                                        new List<sp_Proyecto_CargarUsuarios_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_CargarUsuarios().ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_CargarUsuarios_Result r = new sp_Proyecto_CargarUsuarios_Result();

                        //se asigna valor de consulta en instancia simple
                        r.Nombre_Usuario = item.Nombre_Usuario;

                        resultados.Add(r); //se agrega instancia simple en listado
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static List<sp_Proyecto_SeleccionarPedido_Result> SeleccionarPedido(Products Productos)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_SeleccionarPedido_Result> resultados =
                                        new List<sp_Proyecto_SeleccionarPedido_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_SeleccionarPedido(Productos.ProductID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_SeleccionarPedido_Result r = new sp_Proyecto_SeleccionarPedido_Result();

                        //se asigna valor de consulta en instancia simple
                        r.ProductName = item.ProductName;
                        r.Category = item.Category;
                        r.UnitPrice = item.UnitPrice;


                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }

        public static List<sp_Proyecto_SeleccionarTablaPedidos_Result> SeleccionarTablaPedidos(Pedidos Pedidos)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_SeleccionarTablaPedidos_Result> resultados =
                                        new List<sp_Proyecto_SeleccionarTablaPedidos_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_SeleccionarTablaPedidos(Pedidos.IdPedido).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_SeleccionarTablaPedidos_Result r = new sp_Proyecto_SeleccionarTablaPedidos_Result();

                        //se asigna valor de consulta en instancia simple
                        r.ProductID = item.ProductID;
                        r.num_factura = item.num_factura;
                        r.ProductName = item.ProductName;
                        r.Category = item.Category;
                        r.Cantidad = item.Cantidad;
                        r.UnitPrice = item.UnitPrice;
                        r.FechaPedido = item.FechaPedido;
                        r.Usuario = item.Usuario;
                      


                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }//revisar

        public static List<sp_Proyecto_VerificarSesion_Result> ObenerUsuarios(Security personaSecurity)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_VerificarSesion_Result> resultados =
                                        new List<sp_Proyecto_VerificarSesion_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_VerificarSesion(personaSecurity.Nombre_Usuario).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_VerificarSesion_Result r = new sp_Proyecto_VerificarSesion_Result();

                        //se asigna valor de consulta en instancia simple
                        r.Correo = item.Correo;
                        r.Identificacion = item.Identificacion;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }
        #endregion

        #region Reporterías
        public static List<sp_Proyecto_Reporte_Clientes_Result> ObtenerClientes(int opcion, string ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Clientes_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Clientes_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Clientes(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Clientes_Result r = new sp_Proyecto_Reporte_Clientes_Result();

                        //se asigna valor de consulta en instancia simple

                        r.CustomerID = item.CustomerID;
                        r.CompanyName = item.CompanyName;
                        r.ContactName = item.ContactName;
                        r.ContactTitle = item.ContactTitle;
                        r.Address = item.Address;
                        r.City = item.City;
                        r.Region = item.Region;
                        r.PostalCode = item.PostalCode;
                        r.Country = item.Country;
                        r.Phone = item.Phone;
                        r.Fax = item.Fax;
                        r.CUSTOMER_STATUS = item.CUSTOMER_STATUS;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        } //listo
        public static List<sp_Proyecto_Reporte_Proveedores_Result> ObtenerProveedores(int opcion, int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Proveedores_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Proveedores_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Proveedores(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Proveedores_Result r = new sp_Proyecto_Reporte_Proveedores_Result();

                        //se asigna valor de consulta en instancia simple

                        r.SupplierID = item.SupplierID;
                        r.CompanyName = item.CompanyName;
                        r.ContactName = item.ContactName;
                        r.ContactTitle = item.ContactTitle;
                        r.Address = item.Address;
                        r.City = item.City;
                        r.Region = item.Region;
                        r.PostalCode = item.PostalCode;
                        r.Country = item.Country;
                        r.Phone = item.Phone;
                        r.Fax = item.Fax;
                        r.HomePage = item.HomePage;
                        r.SUPPLIER_STATUS= item.SUPPLIER_STATUS;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }//listo
        public static List<sp_Proyecto_Reporte_Usuarios_Result> ObtenerUsuarios(int opcion, int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Usuarios_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Usuarios_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Usuarios(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Usuarios_Result r = new sp_Proyecto_Reporte_Usuarios_Result();

                        //se asigna valor de consulta en instancia simple

                        r.Identificacion = item.Identificacion;
                        r.Nombre = item.Nombre;
                        r.Primer_Apellido = item.Primer_Apellido;
                        r.Segundo_Apellido = item.Segundo_Apellido;
                        r.Nombre_Usuario = item.Nombre_Usuario;
                        r.Fecha_nacimiento = item.Fecha_nacimiento;
                        r.Telefono = item.Telefono;
                        r.Correo = item.Correo;
                        r.Direccion = item.Direccion;
                        r.clave = item.clave;
                        r.TIPO_USUARIO = item.TIPO_USUARIO;
                        r.CREATEDATE = item.CREATEDATE;
                        r.Clave_temporal = item.Clave_temporal;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }//listo
        public static List<sp_Proyecto_Reporte_Pedidos_Result> ObtenerPedidos(int opcion, int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Pedidos_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Pedidos_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Pedidos(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Pedidos_Result r = new sp_Proyecto_Reporte_Pedidos_Result();
                        sp_Proyecto_Reporte_Ventas_Result v = new sp_Proyecto_Reporte_Ventas_Result();
                        //se asigna valor de consulta en instancia simple
                        r.IdPedido = item.IdPedido;
                        r.ProductID = item.ProductID;
                        r.num_factura = item.num_factura;
                        r.ProductName = item.ProductName;
                        r.Category = item.Category;
                        r.Cantidad = item.Cantidad;
                        r.UnitPrice = item.UnitPrice;
                        r.FechaPedido = item.FechaPedido;
                        r.Usuario = item.Usuario;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return (resultados);
        }//listo
        public static List<sp_Proyecto_Reporte_Ventas_Result> ObtenerVentas(int opcion, int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Ventas_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Ventas_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Ventas(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Ventas_Result r = new sp_Proyecto_Reporte_Ventas_Result();

                        //se asigna valor de consulta en instancia simple
                        r.cod_venta = item.cod_venta;
                        r.num_factura = item.num_factura;
                        r.Sub_total = item.Sub_total;
                        r.Impuesto_ventas = item.Impuesto_ventas;
                        r.Total_pagar = item.Total_pagar;
                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        } //listo
        public static List<sp_Proyecto_Reporte_Inventario_Result> ObtenerInventario(int opcion, int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Inventario_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Inventario_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Inventario(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Inventario_Result r = new sp_Proyecto_Reporte_Inventario_Result();

                        //se asigna valor de consulta en instancia simple

                        r.ProductID = item.ProductID;
                        r.ProductName = item.ProductName;
                        r.CompanyName = item.CompanyName;
                        r.CategoryName = item.CategoryName;
                        r.UnitPrice = item.UnitPrice;
                        r.UnitsInStock = item.UnitsInStock;
                        r.ReorderLevel = item.ReorderLevel;
                        r.PRODUCT_STATUS = item.PRODUCT_STATUS;
                        r.UnitsOnOrder = item.UnitsOnOrder;
                        r.QuantityPerUnit = item.QuantityPerUnit;
                        r.Discontinued = item.Discontinued;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }//listo
        public static List<sp_Proyecto_Reporte_Empleados_Result> ObtenerEmpleados(int opcion, int ID)
        {
            NorthwindEntities contexto = null;
            List<sp_Proyecto_Reporte_Empleados_Result> resultados =
                                        new List<sp_Proyecto_Reporte_Empleados_Result>();
            try
            {
                contexto = new NorthwindEntities(); //Se inicializa megainstancia del Entity

                //Se obtiene valores de consulta en BD
                var consulta = contexto.sp_Proyecto_Reporte_Empleados(opcion,ID).ToList();

                if (consulta != null) //Se verifica consulta sea diferente a NULL
                {
                    foreach (var item in consulta) //Se recorre consulta
                    {
                        //Aqui se crea una instancia simple
                        sp_Proyecto_Reporte_Empleados_Result r = new sp_Proyecto_Reporte_Empleados_Result();

                        //se asigna valor de consulta en instancia simple

                        r.EmployeeID = item.EmployeeID;
                        r.LastName = item.LastName;
                        r.FirstName = item.FirstName;
                        r.Title = item.Title;
                        r.TitleOfCourtesy = item.TitleOfCourtesy;
                        r.BirthDate = item.BirthDate;
                        r.HireDate = item.HireDate;
                        r.Address = item.Address;
                        r.City = item.City;
                        r.Region = item.Region;
                        r.PostalCode = item.PostalCode;
                        r.Country = item.Country;
                        r.HomePhone = item.HomePhone;
                        r.Extension = item.Extension;
                        r.Photo = item.Photo;
                        r.Notes = item.Notes;
                        r.ReportsTo = item.ReportsTo;
                        r.PhotoPath = item.PhotoPath;
                        r.EMPLOYEE_STATUS = item.EMPLOYEE_STATUS;

                        resultados.Add(r);

                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resultados;
        }//listo
        #endregion

        #region Metodos

        public static string descifrar(string cadena)
        {
            string cadenaDescifrada = "";
            byte[] llave;
            byte[] resultado;
            //en este arreglo se guarda la cadena pasada como parametro
            byte[] arreglo = Convert.FromBase64String(cadena.ToString());

            //logica de cifrado(algoritmo md5)
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            // se le asigna la llave de descrifrado que es el atrributo de token, la misma se codifica con el utf8 y genera un codigo hash para 
            //almacenarlo en la llave 
            llave = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes("UAM-2017"));
            /*una vez obtenido la llave se limpia la memoria del md5*/
            md5.Clear();

            /*Algoritmo 3des para descifrar la cadena obtenida desde la BD*/

            TripleDESCryptoServiceProvider des3 = new TripleDESCryptoServiceProvider();
            //se asignan los datos de la llave, el  modo de ddescrifado y el  tipo de algoritmo { para definir los valores random  del cifrado
            des3.Key = llave;
            des3.Mode = CipherMode.ECB;
            des3.Padding = PaddingMode.PKCS7;
            /*se crea una variable patra transdofrmar la cryptorgrafia, esta */
            ICryptoTransform convertir = des3.CreateDecryptor();
            /*se obtiene el dato y se trandforema el bloque completo, ademas se alamvcena el array creado al inicio*/
            resultado = convertir.TransformFinalBlock(arreglo, 0, arreglo.Length);
            /*se limpia la moemoria del tripledes*/
            des3.Clear();
            /*se genera la clave descifrada*/
            cadenaDescifrada = UTF8Encoding.UTF8.GetString(resultado);
            /*se retorna el dato descifrado para analizarlo en el sistema */
            return cadenaDescifrada;

        }

        #endregion
    }
}
