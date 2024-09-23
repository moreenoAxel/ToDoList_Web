<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearTareas.aspx.cs" Inherits="Proyecto_Gestion_Tareas.Tareas.Crear_Tareas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Tareas</title>
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
          .form-container {
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Cambiado de center a flex-start */
            height: 100vh; /* altura completa de la ventana */
            padding-top: 210px; /* Añadir espacio superior */
          }
        .form-content 
        {
            background-color: #FFE4C4; /* color de fondo deseado */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

         .form-group {
            margin-bottom: 15px;
         }
        .form-group label {
            display: block;
            font-size: 16px;
            color: #8B4513;
            margin-bottom: 5px;
        }
        .form-group input, .form-group textarea, .form-group select {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: 1px solid #A0522D;
            border-radius: 5px;
        }
        .form-group button {
            padding: 10px 20px;
            font-size: 18px;
            color: white;
            background-color: #8B4513;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #A0522D;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
        .back-link a {
            font-size: 16px;
            color: #A0522D;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body> 
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-content">
                <div class="header">
                    <h1>CREACION DE TAREAS</h1>
                    <p>En esta seccion, podras crear una nueva tarea, asignarle un nombre, descripcion, prioridad, etc.</p>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblNombre" runat="server">Nombre:</asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblDesc" runat="server">Descripcion:</asp:Label>
                    <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPrioridad" runat="server">Prioridad:</asp:Label>
                    <asp:DropDownList ID="ddlPrioridad" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblFecha" runat="server">Fecha Vencimiento:</asp:Label>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnCrear" runat="server" Text="Crear Tarea" OnClick="btnCrear_Click" />
                </div>
                <div class="back-link">
                    <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Inicio.aspx">Volver a inicio</asp:HyperLink>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
