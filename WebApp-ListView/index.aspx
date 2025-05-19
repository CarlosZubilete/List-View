<%@ Page
  Language="C#"
  AutoEventWireup="true"
  CodeBehind="index.aspx.cs"
  Inherits="WebApp_ListView.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>List-View</title>
  <link href="index.css" type="text/css" rel="stylesheet"/>
</head>
<body>
  <h1>List View</h1>
  <form id="form1" runat="server">
    <div>
      <%-- LIST VIEW --%>
      <asp:ListView ID="ListView1" runat="server" DataSourceID="sqlData_MaxiFlixDB" GroupItemCount="3">
        <EmptyDataTemplate>
          <table runat="server" style="">
            <tr>
              <td>No data was returned.</td>
            </tr>
          </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
          <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
          <tr id="itemPlaceholderContainer" runat="server">
            <td id="itemPlaceholder" runat="server"></td>
          </tr>
        </GroupTemplate>
        <ItemTemplate>
          <td runat="server" style="">Actor:
            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
            <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
            <br />
            IdNacionalidad:
            <asp:Label ID="IdNacionalidadLabel" runat="server" Text='<%# Eval("IdNacionalidad") %>' />
            <br />
            FechaNacimiento:
            <asp:Label ID="FechaNacimientoLabel" runat="server" Text='<%# Eval("FechaNacimiento") %>' />
            <br />
            Imagen:
            <asp:Image ID="ImagenActor" runat="server"
              class="actor-photo"
              src='<%# Eval("ImagenUrl") %>'
              alt='<%# Eval("Nombre") + " " + Eval("Apellido") %>' />
            <br />
          </td>
        </ItemTemplate>
        <LayoutTemplate>
          <table runat="server">
            <tr runat="server">
              <td runat="server">
                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                  <tr id="groupPlaceholder" runat="server">
                  </tr>
                </table>
              </td>
            </tr>
            <tr runat="server">
              <td runat="server" style=""></td>
            </tr>
          </table>
        </LayoutTemplate>
      </asp:ListView>
      <%-- SQL DATA SOURCE --%>
      <asp:SqlDataSource ID="sqlData_MaxiFlixDB" runat="server" ConnectionString="<%$ ConnectionStrings:MaxiFlix_DBConnectionString %>" SelectCommand="SELECT [Nombre], [Apellido], [IdNacionalidad], [FechaNacimiento], [ImagenUrl] FROM [Reparto]"></asp:SqlDataSource>
    </div>
  </form>
</body>
</html>
