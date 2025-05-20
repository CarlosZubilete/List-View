using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_ListView
{
  public partial class index : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

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
      // TODO: agregar un clase connection and un button para ordenar by name.
    }

    protected void btnOreder_Click(object sender, EventArgs e)
    {
      sqlData_Empresas.SelectCommand = "SELECT [Dni], [Nombre], [Apellido], [Edad], [Sexo], [ImagenURL], [Direccion], [Telefono] FROM [Personas] ORDER BY [Nombre]";
    }
  }
}