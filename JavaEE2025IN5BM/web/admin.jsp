<%-- 
    Document   : admin
    Created on : 22/07/2025, 16:43:15
    Author     : Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza & Co. | Ventana de Administrador</title>
    <link rel="stylesheet" href="Styles/admin.css">
</head>
<body>
    
    <nav>
        <ul>
            <li><a href="cliente.jsp" target="contenido">Clientes</a></li>
            <li><a href="proveedor.jsp" target="contenido">Proveedores</a></li>
            <li><a href="producto.jsp" target="contenido">Productos</a></li>
            <li><a href="empleado.jsp" target="contenido">Empleados</a></li>
            <li><a href="venta.jsp" target="contenido">Ventas</a></li>
            <li><a href="detalleVenta.jsp" target="contenido">Detalle Ventas</a></li>
            <li><a href="factura.jsp" target="contenido">Facturas</a></li>
            <li><a href="compras.jsp" target="contenido">Compras</a></li>
            <li><a href="detalleCompra.jsp" target="contenido">Detalle Compras</a></li>
            <li class="avatar">
                <img src="img/UsuarioAdmin.png" alt="Avatar">
                <ul class="avatar-menu">
                    <li><a href="principal.jsp">Cambiar Cuenta</a></li>
                    <li><a href="index.jsp">Cerrar sesión</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <div>
        <h2>Bienvenido a la ventana de Administrador</h2>
    </div>
     
    <!-- Aquí estará el contenido dinámico -->
    <div class="panel">
        <iframe name="contenido" src="cliente.jsp" width="100%" height="600px" style="border:none;"></iframe>
    </div>

</body>
</html>
