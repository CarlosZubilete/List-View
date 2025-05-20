<%@ Page
  Language="C#"
  AutoEventWireup="true"
  CodeBehind="dataList.aspx.cs"
  Inherits="WebApp_ListView.dataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <asp:HyperLink ID="link" runat="server" NavigateUrl="~/index.aspx">INDEX</asp:HyperLink>
  <h1>Data List</h1>
  <form id="form1" runat="server">
    <div>
      <asp:DataList ID="DataList1" runat="server" DataSourceID="sqlData_Empresas">
        <ItemTemplate>
          <asp:Button ID="btnPersona" runat="server" Text='<%# Eval("Nombre") + " "+ Eval("Apellido") %>'
            CommandArgument='<%# Eval("Nombre") +" "+  Eval("Apellido")+" " + Eval("Dni") %>'
            CommandName="eventoShowPerson" OnCommand="btnPersona_Command"  />
        </ItemTemplate>
      </asp:DataList>
    </div>
    <br />
    <asp:Label Text="" runat="server" ID="lbLShowName" />
    <%-- SQL DATA SOURCE --%>
    <asp:SqlDataSource ID="sqlData_Empresas" runat="server" ConnectionString="<%$ ConnectionStrings:EmpresaConnectionString %>" SelectCommand="SELECT [Dni], [Nombre], [Apellido], [Edad], [Sexo], [ImagenURL], [Direccion], [Telefono] FROM [Personas]"></asp:SqlDataSource>
  </form>
</body>
</html>
