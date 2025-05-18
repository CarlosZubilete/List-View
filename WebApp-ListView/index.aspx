<%@ Page 
  Language="C#" 
  AutoEventWireup="true"
  CodeBehind="index.aspx.cs" 
  Inherits="WebApp_ListView.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List-View</title>
</head>
<body>
  <h1>List View</h1>
  <form id="form1" runat="server">
      <div>
        <%-- LIST VIEW --%>
        <asp:ListView ID="list" runat="server" DataSourceID="sqlData_MaxiFlixDB" GroupItemCount="3">
          <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF;color: #284775;">FechaEstreno:
              <asp:Label ID="FechaEstrenoLabel" runat="server" Text='<%# Eval("FechaEstreno") %>' />
              <br />Titulo:
              <asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' />
              <br />MinutosDuracion:
              <asp:Label ID="MinutosDuracionLabel" runat="server" Text='<%# Eval("MinutosDuracion") %>' />
              <br />Bio:
              <asp:Label ID="BioLabel" runat="server" Text='<%# Eval("Bio") %>' />
              <br /></td>
          </AlternatingItemTemplate>
          <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">FechaEstreno:
              <asp:TextBox ID="FechaEstrenoTextBox" runat="server" Text='<%# Bind("FechaEstreno") %>' />
              <br />Titulo:
              <asp:TextBox ID="TituloTextBox" runat="server" Text='<%# Bind("Titulo") %>' />
              <br />MinutosDuracion:
              <asp:TextBox ID="MinutosDuracionTextBox" runat="server" Text='<%# Bind("MinutosDuracion") %>' />
              <br />Bio:
              <asp:TextBox ID="BioTextBox" runat="server" Text='<%# Bind("Bio") %>' />
              <br />
              <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
              <br />
              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
              <br /></td>
          </EditItemTemplate>
          <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
            <td runat="server" style="">FechaEstreno:
              <asp:TextBox ID="FechaEstrenoTextBox" runat="server" Text='<%# Bind("FechaEstreno") %>' />
              <br />Titulo:
              <asp:TextBox ID="TituloTextBox" runat="server" Text='<%# Bind("Titulo") %>' />
              <br />MinutosDuracion:
              <asp:TextBox ID="MinutosDuracionTextBox" runat="server" Text='<%# Bind("MinutosDuracion") %>' />
              <br />Bio:
              <asp:TextBox ID="BioTextBox" runat="server" Text='<%# Bind("Bio") %>' />
              <br />
              <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
              <br />
              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
              <br /></td>
          </InsertItemTemplate>
          <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF;color: #333333;">FechaEstreno:
              <asp:Label ID="FechaEstrenoLabel" runat="server" Text='<%# Eval("FechaEstreno") %>' />
              <br />Titulo:
              <asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' />
              <br />MinutosDuracion:
              <asp:Label ID="MinutosDuracionLabel" runat="server" Text='<%# Eval("MinutosDuracion") %>' />
              <br />Bio:
              <asp:Label ID="BioLabel" runat="server" Text='<%# Eval("Bio") %>' />
              <br /></td>
          </ItemTemplate>
          <LayoutTemplate>
            <table runat="server">
              <tr runat="server">
                <td runat="server">
                  <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <tr id="groupPlaceholder" runat="server">
                    </tr>
                  </table>
                </td>
              </tr>
              <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                  <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                    <Fields>
                      <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                  </asp:DataPager>
                </td>
              </tr>
            </table>
          </LayoutTemplate>
          <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">FechaEstreno:
              <asp:Label ID="FechaEstrenoLabel" runat="server" Text='<%# Eval("FechaEstreno") %>' />
              <br />Titulo:
              <asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' />
              <br />MinutosDuracion:
              <asp:Label ID="MinutosDuracionLabel" runat="server" Text='<%# Eval("MinutosDuracion") %>' />
              <br />Bio:
              <asp:Label ID="BioLabel" runat="server" Text='<%# Eval("Bio") %>' />
              <br /></td>
          </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <%-- SQL DATA SOURCE --%>
        <asp:SqlDataSource ID="sqlData_MaxiFlixDB" runat="server" ConnectionString="<%$ ConnectionStrings:MaxiFlix_DBConnectionString %>" SelectCommand="SELECT [FechaEstreno], [Titulo], [MinutosDuracion], [Bio] FROM [Peliculas]"></asp:SqlDataSource>
      </div>
  </form>
</body>
</html>
