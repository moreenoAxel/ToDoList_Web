<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Proyecto_Gestion_Tareas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>INICIO</title>
    <style type="text/css">
        .header{
            text-align:center;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color: #8B4513;
            position: absolute;
            top: 20%; /* Ajusta este valor según sea necesario */
            left: 50%;
            transform: translate(-50%, -50%);
            font: bold 90% monospace;
            letter-spacing: 2px;
            font-size: 20px;
        }
        .header-p{
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
        }
         .body {
            background-color: #F0EAD6; /* color de fondo deseado */
         }
         .form {
            background-color: #FFE4C4; /* color de fondo deseado */
         }
        .links {
            display: flex;
            justify-content: space-around;
            position: absolute;
            top: 40%;
            width: 100%;
           
        }
        .link{
             font-size: 18px; /* Tamaño del enlace */
             color: #A0522D; /* Color del enlace */
             text-decoration: none;
             margin-bottom: 10px;
        }
        .link:hover{
            text-decoration: underline;
        }
        .welcome-section{
            text-align:center;
            margin: 20px;
        }
        .welcome-section h2 {
            font-size: 24px;
            color: #8B4513;
        }
        .welcome-section p {
            font-size: 18px;
            color: #6F4F28;
        }
        .link-description {
            font-size: 16px;
            color: #6F4F28;
            margin-top: 5px;
             margin: 0;
        }
        .link-container{
            text-align: center;
            width: 20%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="form">
        <div class="header">
                <h1> GESTION DE TAREAS </h1>
             <p>Optimiza la gestión de tus tareas con nuestra aplicación intuitiva y fácil de usar. Aquí podrás crear, listar, modificar y eliminar tareas de manera eficiente.</p>
        </div>
            <div class="links">
                <div class="link-container">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="link" navigateUrl="~/Tareas/CrearTareas.aspx">Crear Tarea</asp:HyperLink> 
                    <p class="link-description">En esta seccion, podras crear una tarea, asi como elegir su prioridad, fecha limite, etc.</p>
                </div>
                <div class="link-container">
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="link" NavigateUrl="~/Tareas/ListarTareas.aspx">Listado de Tareas</asp:HyperLink>
                <p class="link-description">En esta seccion, podras ver un listado de las tareas creadas.</p>
                </div>
                <div class="link-container">
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="link" NavigateUrl="~/Tareas/ModificarTareas.aspx">Modificar Tareas</asp:HyperLink>
                <p class="link-description">En esta seccion, podras modificar tareas, su estado, nombre, fecha limite, etc.</p>
                </div>
                <div class="link-container">
                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="link" NavigateUrl="~/Tareas/EliminarTareas.aspx">Eliminar Tareas</asp:HyperLink>
                <p class="link-description">En esta seccion podras eliminar una tarea, ya sea por que ya a sido completada o simplemente desafectada.</p>
                  </div>                              
        </div>
    </form>
</body>
</html>
