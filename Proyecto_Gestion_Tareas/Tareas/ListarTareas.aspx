﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarTareas.aspx.cs" Inherits="Proyecto_Gestion_Tareas.Tareas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listar Tareas</title>
    <style type="text/css">
         .header
         {
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
         .header-p
         {
              font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
         }
        .form-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100vh;
            padding-top: 150px;
        }
        .form-content {
            background-color: #FFE4C4;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .gridview-container {
            margin-top: 20px;
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
        .filters {
            margin-top: 20px;
        }
        .filters div {
            margin-bottom: 10px;
        }
        .filters label {
            font-weight: bold;
            margin-right: 10px;
        }
        .label-style {
              font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              color: #8B4513;
              font-size: 14px;
              font-weight: bold;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
          <div class="form-content">
            <div class="header">
                <h1> LISTADO DE TAREAS </h1>
                <p class="header-p">En esta seccion, podra ver un listado de las tareas generadas.</p>
            </div>
              <div class="filters">
                  <div>
                      <asp:Label ID="lblFilter" runat="server" CssClass="label-style">Buscar por nombre:</asp:Label>
                      <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
                      <asp:Button ID="btnBuscar" runat="server" Text="Buscar"/>
                  </div>
                  <div>
                      <asp:Label ID="lblDdl" runat="server" CssClass="label-style">Buscar por prioridad:</asp:Label>
                      <asp:DropDownList ID="ddlBuscar" runat="server"></asp:DropDownList>
                  </div>
              </div>
              <div class="gridview-container">
                  <asp:GridView ID="gvTareas" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvTareas_PageIndexChanging"></asp:GridView>
              </div>
              <div class="back-link">
                  <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Inicio.aspx">Volver a inicio</asp:HyperLink>
              </div>
          </div>
        </div>
    </form>
</body>
</html>
