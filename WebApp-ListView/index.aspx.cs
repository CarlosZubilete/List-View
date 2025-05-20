using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Added to connectig SQL
using System.Data;
using System.Data.SqlClient;

namespace WebApp_ListView
{
  public partial class index : System.Web.UI.Page
  {
    private string _query = "SELECT [Dni], [Nombre], [Apellido], [Edad], [Sexo], [ImagenURL], [Direccion], [Telefono] FROM [Personas]";
    private const string _connectionString = @"Data Source=DESKTOP-LFTFVP5\SQLEXPRESS;Initial Catalog=Empresa;Integrated Security=True"; 
    protected void Page_Load(object sender, EventArgs e)
    {
      // 
      if (!IsPostBack)
      {
        SqlConnection connection = new SqlConnection(_connectionString);
        connection.Open();

        SqlDataAdapter adapter = new SqlDataAdapter(_query, connection);
        
        DataSet data = new DataSet();
        adapter.Fill(data, "Personas");

        listViewCompany.DataSource = data.Tables["Personas"];
        listViewCompany.DataBind();

        connection.Close();
      }
    }

    protected void btnSelect_Command(object sender, CommandEventArgs e)
    {
      if (e.CommandName == "eventSelect")
      {
        lblShowSelect.Text = e.CommandArgument.ToString();
      }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      string name;
      string surname;

      lblShowSelectedPeople.Text = string.Empty;

      // We go through the elements
      foreach (ListViewItem item in listViewCompany.Items)
      {
        // For each item, I look for the CheckBox through a control.
        CheckBox checkBox = (CheckBox)(item.FindControl("checkBoxPersona"));

        if (checkBox.Checked)
        {
          name = ((Label)item.FindControl("NombreLabel")).Text;
          surname = ((Label)item.FindControl("ApellidoLabel")).Text;

          lblShowSelectedPeople.Text += name + " " + surname + "<br>";
        }

      }
    }

    protected void btnOreder_Click(object sender, EventArgs e)
    {
      //sqlData_Empresas.SelectCommand = "SELECT [Dni], [Nombre], [Apellido], [Edad], [Sexo], [ImagenURL], [Direccion], [Telefono] FROM [Personas] ORDER BY [Nombre]";
    }
  }
}


// TODO : ADDED A CLASS CONNECTION AND FUNCTION TO ORDER BY NAME.