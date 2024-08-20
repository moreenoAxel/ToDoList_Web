<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarTareas.aspx.cs" Inherits="Proyecto_Gestion_Tareas.Tareas.ModificarTareas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar Tareas</title>
     <style type="text/css">
         .header {
              text-align:center;
              font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              color: #8B4513;
              margin-top: 20px;
         }
         .header-p {
              font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
         }
         .label-style {
              font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
              color: #8B4513;
              font-size: 14px;
              font-weight: bold;
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
         .input-group {
            margin-bottom: 15px;
         }
         .input-group label {
            display: block;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color: #8B4513;
            font-weight: bold;
         }
         .input-group input, .input-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #A0522D;
            border-radius: 4px;
         }
         .btn-container {
            text-align: center;
            margin-top: 20px;
         }
         .btn-container input {
            background-color: #A0522D;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
         }
         .btn-container input:hover {
            background-color: #8B4513;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="form-container">
            <div class="form-content">
                <div class="header">
                    <h1>MODIFICAR TAREAS</h1>
                    <p class="header-p">En esta sección, podrá modificar las tareas generadas.</p>
                </div>
                <div class="gridview-container">
                    <asp:GridView ID="gvTareas" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                            <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" />
                            <asp:BoundField DataField="FechaVencimiento" HeaderText="Fecha de Vencimiento" />
                            <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="input-group">
                    <label for="txtNombre">Nombre:</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="input-group"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="txtDescripcion">Descripción:</label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-group"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="ddlPrioridad">Prioridad:</label>
                    <asp:DropDownList ID="ddlPrioridad" runat="server" CssClass="input-group">
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <label for="txtFechaVencimiento">Fecha de Vencimiento:</label>
                    <asp:TextBox ID="txtFechaVencimiento" runat="server" CssClass="input-group"></asp:TextBox>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar"/>
                </div>
                <div class="back-link">
                    <asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Inicio.aspx">Volver a Inicio</asp:HyperLink>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
