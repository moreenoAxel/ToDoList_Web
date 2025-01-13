<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarTareas.aspx.cs" Inherits="Proyecto_Gestion_Tareas.Tareas.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listar Tareas</title>
    <style type="text/css">
        /* General */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
        }

        /* Header */
        .header {
            text-align: center;
            color: #8B4513;
            font: bold 90% monospace;
            letter-spacing: 2px;
            font-size: 20px;
            padding: 20px 0;
            background-color: #FAEBD7;
        }

        .header h1 {
            margin-bottom: 10px;
        }

       .table-container{
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
            display: flex;
            justify-content: center; /* Centra el contenido horizontalmente */
            align-items: center;
       }

                     .filters {
                display: flex;
                flex-direction: column;
                align-items: center; /* Centrar los filtros horizontalmente */
                gap: 15px; /* Espaciado entre filtros */
                margin-bottom: 20px; /* Separación entre filtros y tabla */
            }

            .filter-group {
                display: flex;
                gap: 10px; /* Espaciado entre elementos del filtro */
                align-items: center; /* Centrar verticalmente los elementos */
            }

            .filter-group label,
            .filter-group input,
            .filter-group select,
            .filter-group button {
                font-size: 14px; /* Tamaño de fuente uniforme */
            }

         .filter-group input,
          .filter-group select,
          .filter-group button {
                width: 200px; /* Ancho uniforme para los campos */
                padding: 5px; /* Espaciado interno */
         }

            .gridview-container {
                width: 90%; /* Hacer que la tabla sea más ancha */
                max-width: 1200px;
                overflow-x: auto;
                margin: 0 auto; /* Centrar la tabla */
                border: 1px solid #ddd; /* Añadir borde para definir la tabla */
            }

        .filters div {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .filters label {
            margin-bottom: 5px;
        }

        asp\:GridView {
            width: 100%; /* Full width */
            border-collapse: collapse; /* Compact style */
            text-align: center;
            margin-top: 20px;
        }

        asp\:GridView th, asp\:GridView td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        /* Button and link */
        asp\:Button {
            margin-top: 10px;
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

        .label-style {
            color: #8B4513;
            font-size: 14px;
            font-weight: bold;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>LISTADO DE TAREAS</h1>
            <p>En esta sección, podrá ver un listado de las tareas generadas.</p>
        </div>

        <div class="table-container">
            <div class="filters">
                <div class="filter-group">
                    <asp:Label ID="lblFilter" runat="server" CssClass="label-style">Buscar por nombre:</asp:Label>
                    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                </div>
                <div class="filter-group">
                    <asp:Label ID="lblDdl" runat="server" CssClass="label-style">Buscar por prioridad:</asp:Label>
                    <asp:DropDownList ID="ddlBuscar" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBuscar_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
        <div class="table-container">
            <div class="gridview-container">
                <asp:GridView ID="gvTareas" runat="server" AutoGenerateColumns="True" AllowPaging="True" OnPageIndexChanging="gvTareas_PageIndexChanging"></asp:GridView>

            </div>
          </div>
        </div>

        <div class="back-link">
            <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Inicio.aspx">Volver a inicio</asp:HyperLink>
        </div>
    </form>
</body>
</html>
