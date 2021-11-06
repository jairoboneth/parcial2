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
    public partial class WebForm5 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
          
           // dt = Productos(myVar);
           // GridView1.DataSource = dt;
           // GridView1.DataBind();
        }
            protected DataTable Productos(int id)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            con.Open();
            string query = "SELECT * FROM Pedido WHERE id = @id";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@id", id);

            DataTable daat = new DataTable();
            daat.Load(cmd.ExecuteReader());
            return daat;
        }
    }
}