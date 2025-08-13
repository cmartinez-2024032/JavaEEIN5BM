<%-- 
    Document   : empleado
    Created on : 22 jul 2025, 17:08:43
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Empleados</title>
    <link rel="stylesheet" href="Styles/empleado.css">
</head>
<body>
    <nav>
        <a href="admin.jsp" class="logo">Essenza & Co.</a>
    </nav>
    <div class="contenedor-principal">
        <div class="panel-formulario">
            <h1>Gestión de Empleados</h1>
            <form action="Controlador?menu=Empleado" method="POST" class = "formulario">
            
                <input type="text" autocomplete="off" value="${empleado.getCodigoEmpleado()}"name="txtCodigoEmpleado" placeholder="ID">
                <input type="text" autocomplete="off" value="${empleado.getNombreEmpleado()}" name="txtNombre"placeholder="Nombre Empleado" required>
                <input type="text" autocomplete="off" value="${empleado.getApellidoEmpleado()} "name="txtApellido" placeholder="Apellido" required>
                <input type="text" autocomplete="off" value="${empleado.getDireccionEmpleado()} "name="txtDireccion" placeholder="Dirección" required>
                <input type="text" autocomplete="off" value="${empleado.getTelefonoEmpleado()} "name="txtTelefono"  placeholder="Teléfono" required>
                <input type="email" autocomplete="off" value="${empleado.getEmailEmpleado()}"name="txtCorreo" placeholder="Correo Electrónico" required>
                <input type="text" autocomplete="off" value="${empleado.getPuestoEmpleado()} "name="txtPuesto"  placeholder="Puesto" required>
            
            <div class="botones">
             
                <button type="submit" class="btn-insertar" value="Agregar" name="accion">
                    <div class="svg-wrapper-1">
                        <div class="svg-wrapper">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="30" height="30" class="icon">
                                <path d="M22,15.04C22,17.23 20.24,19 18.07,19H5.93C3.76,19 2,17.23 2,15.04C2,13.07 3.43,11.44 5.31,11.14C5.28,11 5.27,10.86 5.27,10.71C5.27,9.33 6.38,8.2 7.76,8.2C8.37,8.2 8.94,8.43 9.37,8.8C10.14,7.05 11.13,5.44 13.91,5.44C17.28,5.44 18.87,8.06 18.87,10.83C18.87,10.94 18.87,11.06 18.86,11.17C20.65,11.54 22,13.13 22,15.04Z"></path>
                            </svg>
                        </div>
                    </div>
                    <span>Agregar</span>
                </button>
          
                <button type="button" class="btn-actualizar">
                    <span class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                        </svg>
                    </span>
                    <span class="text">Editar</span>
                </button>
                <button type="button" class="btn-buscar">
                    <span class="IconContainer">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 156 78" class="telescope">
                            <path fill="url(#paint0_linear_131_19)" d="M10.3968 78C10.6002 78 32 72.831 32 72.831C29.5031 68.7434 27.3945 63.5193 26.0258 57.947C24.6386 52.3381 24.0837 46.7841 24.3982 42L3.38683 47.0957C3.38683 47.0957 0.0205717 47.9206 -1.0152 55.4725 1.09333 63.9959C3.05409 72.0061 7.10469 78 10.3968 78Z"></path>
                            <path fill="url(#paint1_linear_131_19)" d="M63.0824 25L34.8099 32.0351C33.7675 32.2957 32.8714 33.0215 32.1582 34.1382C31.6096 34.9943 31.1524 36.0738 30.8049 37.3393C30.5489 38.2513 30.366 39.2563 30.238 40.3544C29.6894 44.7839 30.0734 50.5348 31.5547 56.6207C33.0177 62.7067 35.2854 67.9925 37.7725 71.6587C38.3942 72.5707 39.016 73.371 39.6561 74.0596C40.5339 75.0274 41.43 75.7718 42.3078 76.2743C43.1307 76.7396 43.9536 77 44.74 77C45.0326 77 45.3252 76.9628 45.5995 76.8883L72.5919 70.1698L74 69.8164C69.867 64.1027 66.6484 56.1184 64.7282 48.1527C62.7532 39.9451 62.1497 31.8306 63.0094 25.3166C63.0458 25.2233 63.0643 25.1117 63.0824 25Z"></path>
                            <defs>
                                <linearGradient gradientUnits="userSpaceOnUse" y2="78" x2="16" y1="42" x1="16" id="paint0_linear_131_19">
                                    <stop stop-color="#6A8EF6"></stop>
                                    <stop stop-color="#BF8AEB" offset="1"></stop>
                                </linearGradient>
                                <linearGradient gradientUnits="userSpaceOnUse" y2="77" x2="52" y1="25" x1="52" id="paint1_linear_131_19">
                                    <stop stop-color="#6A8EF6"></stop>
                                    <stop stop-color="#BF8AEB" offset="1"></stop>
                                </linearGradient>
                            </defs>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 104 69" class="tripod">
                            <path stroke-linecap="round" stroke-width="11" stroke="url(#paint0_linear_124_14)" d="M98.4336 63.3406L52 5.99991"></path>
                            <path stroke-linecap="round" stroke-width="11" stroke="url(#paint1_linear_124_14)" d="M52.4336 6L6.00004 63.3407"></path>
                            <path stroke-linecap="round" stroke-width="11" stroke="url(#paint2_linear_124_14)" d="M52 63L52 6"></path>
                            <defs>
                                <linearGradient gradientUnits="userSpaceOnUse" y2="40.5" x2="68" y1="32" x1="77.5" id="paint0_linear_124_14">
                                    <stop stop-color="#8E8DF2"></stop>
                                    <stop stop-color="#BC8BEC" offset="1"></stop>
                                </linearGradient>
                                <linearGradient gradientUnits="userSpaceOnUse" y2="40.5174" x2="36.4196" y1="32.9922" x1="26.1302" id="paint1_linear_124_14">
                                    <stop stop-color="#8E8DF2"></stop>
                                    <stop stop-color="#BC8BEC" offset="1"></stop>
                                </linearGradient>
                                <linearGradient gradientUnits="userSpaceOnUse" y2="34.8174" x2="42.7435" y1="34.0069" x1="55.4548" id="paint2_linear_124_14">
                                    <stop stop-color="#8E8DF2"></stop>
                                    <stop stop-color="#BC8BEC" offset="1"></stop>
                                </linearGradient>
                            </defs>
                        </svg>
                    </span>
                    <span class="text">Buscar</span>
                </button>
                <button type="button" class="btn-eliminar">
                    <span class="button__text">Eliminar</span>
                    <span class="button__icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="512" viewBox="0 0 512 512" height="512" class="svg">
                            <path style="fill:none;stroke:#323232;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px" d="M112,112l20,320c.95,18.49,14.4,32,32,32H348c17.67,0,30.87-13.51,32-32l20-320"></path>
                            <line y2="112" y1="112" x2="432" x1="80" style="stroke:#323232;stroke-linecap:round;stroke-miterlimit:10;stroke-width:32px"></line>
                            <path style="fill:none;stroke:#323232;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px" d="M192,112V72h0a23.93,23.93,0,0,1,24-24h80a23.93,23.93,0,0,1,24,24h0v40"></path>
                            <line y2="400" y1="176" x2="256" x1="256" style="fill:none;stroke:#323232;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"></line>
                            <line y2="400" y1="176" x2="192" x1="184" style="fill:none;stroke:#323232;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"></line>
                            <line y2="400" y1="176" x2="320" x1="328" style="fill:none;stroke:#323232;stroke-linecap:round;stroke-linejoin:round;stroke-width:32px"></line>
                        </svg>
                    </span>
                </button>
            </div>
            </form>
            <div class="marca-interna">Essenza & Co.</div>
        </div>
        <div class="panel-tabla">
            <div class="tabla-contenedor">
                <table class="tabla">
                    <thead>
                        <tr>
                            <th></th>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Dirección</th>
                            <th>Teléfono</th>
                            <th>Correo Electrónico</th>
                            <th>Puesto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="empleado" items="${empleados}">
                        <tr>
                            <td><input type="radio" name="registro" class="radio-input"></td>
                            <td>${empleado.getCodigoEmpleado()}</td>
                            <td>${empleado.getNombreEmpleado()}</td>
                            <td>${empleado.getApellidoEmpleado()}</td>
                            <td>${empleado.getDireccionEmpleado()}</td>
                            <td>${empleado.getTelefonoEmpleado()}</td>
                            <td>${empleado.getEmailEmpleado()}</td>
                            <td>${empleado.getPuestoEmpleado()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>