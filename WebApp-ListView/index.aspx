<%@ Page
  Language="C#"
  AutoEventWireup="true"
  CodeBehind="index.aspx.cs"
  Inherits="WebApp_ListView.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>List-View</title>
  <link href="index.css" type="text/css" rel="stylesheet" />
</head>
<body>
  <h1>Personal de empresas:</h1>
  <form id="form1" runat="server">
    <%-- LIST VIEW --%>
    <div class="listview-container">
      <asp:ListView ID="ListView1" runat="server" DataSourceID="sqlData_Empresas" GroupItemCount="3" DataKeyNames="Dni">
        <EditItemTemplate>
          <td runat="server" style="">DNI:
            <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
            <br />
            FullName:
            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
            <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
            <br />
            <asp:ImageButton ID="imgBtn" runat="server"
              class="actor-photo" ImageUrl='<%# Eval("ImagenURL") %>' />
            <br />
            Age:
            <asp:Label ID="EdadLabel" runat="server" Text='<%# Eval("Edad") %>' />
            <br />
            Sexo:
            <asp:Label ID="SexoLabel" runat="server" Text='<%# Eval("Sexo") %>' />
            <br />
            Address:
            <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
            <br />
            Phone:
            <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
          </td>
        </EditItemTemplate>
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
        <InsertItemTemplate>
          <td runat="server" style="">DNI:
            <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
            <br />
            FullName:
            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
            <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
            <br />
            <asp:ImageButton ID="imgBtn" runat="server"
              class="actor-photo" ImageUrl='<%# Eval("ImagenURL") %>' />
            <br />
            Age:
            <asp:Label ID="EdadLabel" runat="server" Text='<%# Eval("Edad") %>' />
            <br />
            Sexo:
            <asp:Label ID="SexoLabel" runat="server" Text='<%# Eval("Sexo") %>' />
            <br />
            Address:
            <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
            <br />
            Phone:
            <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
          </td>
        </InsertItemTemplate>
        <ItemTemplate>
          <td runat="server" style="" class="employee-card">DNI:
            <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
            <br />
            FullName:
            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
            <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
            <br />
            <asp:ImageButton ID="imgBtn" runat="server"
              class="actor-photo" ImageUrl='<%# Eval("ImagenURL") %>' />
            <br />
            Age:
            <asp:Label ID="EdadLabel" runat="server" Text='<%# Eval("Edad") %>' />
            <br />
            Sexo:
            <asp:Label ID="SexoLabel" runat="server" Text='<%# Eval("Sexo") %>' />
            <br />
            Address:
            <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
            <br />
            Phone:
            <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
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
              <td runat="server" style="" class="datapager">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                  <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" ButtonCssClass="button" />
                  </Fields>
                </asp:DataPager>
              </td>
            </tr>
          </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
          <td runat="server" style="">DNI:
            <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
            <br />
            FullName:
            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
            <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
            <br />
            <asp:ImageButton ID="imgBtn" runat="server"
              class="actor-photo" ImageUrl='<%# Eval("ImagenURL") %>' />
            <br />
            Age:
            <asp:Label ID="EdadLabel" runat="server" Text='<%# Eval("Edad") %>' />
            <br />
            Sexo:
            <asp:Label ID="SexoLabel" runat="server" Text='<%# Eval("Sexo") %>' />
            <br />
            Address:
            <asp:Label ID="DireccionLabel" runat="server" Text='<%# Eval("Direccion") %>' />
            <br />
            Phone:
            <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
          </td>
        </SelectedItemTemplate>
      </asp:ListView>
    </div>
    <%-- SQL DATA SOURCE --%>
    <asp:SqlDataSource ID="sqlData_Empresas" runat="server" ConnectionString="<%$ ConnectionStrings:EmpresaConnectionString %>" SelectCommand="SELECT [Dni], [Nombre], [Apellido], [Edad], [Sexo], [ImagenURL], [Direccion], [Telefono] FROM [Personas]"></asp:SqlDataSource>
  </form>
</body>
</html>


<%-- 
  <asp:SqlDataSource ID="sqlData_MaxiFlixDB"
    runat="server" ConnectionString="<%$ ConnectionStrings:MaxiFlix_DBConnectionString %>"
    SelectCommand="SELECT Re.[Nombre] , Re.[Apellido], Pa.[Nombre] as 'Nacionalidad', Re.[FechaNacimiento], Re.[ImagenUrl]
    FROM [Reparto] Re JOIN [Paises] Pa ON Pa.Id = Re.IdNacionalidad">
  </asp:SqlDataSource>  
--%>