using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        String value;
        int idprod, numrows, numcells;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {

            idprod = DropDownList4.SelectedIndex;


            dt = Productos(idprod);
             numrows = int.Parse(dt.Rows.Count.ToString());
             numcells = int.Parse(dt.Columns.Count.ToString());

         



        }

        protected DataTable Productos(int id)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            con.Open();
            string query = "SELECT * FROM [Table] WHERE id = @id";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@id", id);

            DataTable daat = new DataTable();
            dt.Load(cmd.ExecuteReader());
            return daat;
        }
    }
}

public class Producto
{
    String nombre;
    int cantidad;
    double precio;

    public Producto(String nombre, int cantidad, double precio)
    {
        this.nombre = nombre;
        this.cantidad = cantidad;
        this.precio = precio;

    }
}