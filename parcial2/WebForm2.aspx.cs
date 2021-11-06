using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        String value;
        int idprod, numrows, numcells;
        double tot = 0;
        DataTable dt = new DataTable();

        private static HttpSessionState session { get { return HttpContext.Current.Session; } }

        public static string NroPedido
        {
            get { return session["nroPedido"] as string; }
            set { session["nroPedido"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource4_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
             NroPedido = e.Command.Parameters["@nroPedido"].Value.ToString(); 
            numrows = int.Parse(e.Command.Parameters["@nroPedido"].Value.ToString());

        }
        List<double> list = new List<double>();

        protected void Button1_Click(object sender, EventArgs e)
        {

            idprod = DropDownList4.SelectedIndex;
            if(session["nroPedido"] is null) { 
            SqlDataSource4.Insert();
            this.Session["nroPedido"] = NroPedido;
            
            }
            else
            {
                dt = Productos(int.Parse(DropDownList4.SelectedValue));
                var Totalprecio = long.Parse(dt.Rows[0]["precio"].ToString())*long.Parse(TextBox12.Text);
                var conIva = Totalprecio * 1.19;
                list.Add(conIva);
                this.Session["TotalPedido"]= conIva;
                SqlDataSource5.Insert();
            }

            for (int i = 0; i < list.Count; i++)
            {
                tot += list[i];

            }
            Label2.Text = tot+"";
            Session.Add("MySessionVar", numrows+"");

           


        }
       

            protected void Button4_Click(object sender, EventArgs e) {

            Response.Redirect("WebForm5");

        }

        protected DataTable Productos(int id)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True");
            con.Open();
            string query = "SELECT * FROM [Table] WHERE id = @id";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@id", id);

            DataTable daat = new DataTable();
            daat.Load(cmd.ExecuteReader());
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