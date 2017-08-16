using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{

    public void resultado()
    {
        Decimal valor1 = Decimal.Parse(TextBox1.Text);
        Decimal valor2 = Decimal.Parse(TextBox5.Text);
        Decimal valor3 = Decimal.Parse(TextBox9.Text);
        Decimal valor4 = Decimal.Parse(TextBox13.Text);

        Decimal res = valor1 + valor2 + valor3 + valor4;

        TextBox17.Text = res.ToString();
        TextBox17.Text = string.Format("{0:##,###.00}", Convert.ToDouble(TextBox17.Text));
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if(TextBox2.Text == ""){
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox3.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox5.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox6.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox7.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox9.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox10.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox11.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox13.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox14.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else if (TextBox15.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Verificar campos obligatorios!');", true);
        }
        else
        {
            Decimal valor1 = Decimal.Parse(TextBox1.Text);
            Decimal valor2 = Decimal.Parse(TextBox5.Text);
            Decimal valor3 = Decimal.Parse(TextBox9.Text);
            Decimal valor4 = Decimal.Parse(TextBox13.Text);

            SqlConnection work = new SqlConnection("Data Source=192.168.0.46;Initial Catalog=GRULOP;User ID=sa;Password=Volteo0511*");
            {
                work.Open();
                SqlCommand rpt = new SqlCommand("insert into T_Conceptosresultado (id_parametro, importe, fecha_ini, fecha_fin, comentario) Values (@id_parametro, @importe, @fecha_ini, @fecha_fin, @comentario), (@id_parametro1, @importe1, @fecha_ini1, @fecha_fin1, @comentario1), (@id_parametro2, @importe2, @fecha_ini2, @fecha_fin2, @comentario2), (@id_parametro3, @importe3, @fecha_ini3, @fecha_fin3, @comentario3)", work);

                rpt.Parameters.AddWithValue("@id_parametro", DropDownList1.SelectedValue);
                rpt.Parameters.AddWithValue("@importe", valor1);
                rpt.Parameters.AddWithValue("@fecha_ini", TextBox2.Text);
                rpt.Parameters.AddWithValue("@fecha_fin", TextBox3.Text);
                rpt.Parameters.AddWithValue("@comentario", TextBox4.Text);

                rpt.Parameters.AddWithValue("@id_parametro1", DropDownList2.SelectedValue);
                rpt.Parameters.AddWithValue("@importe1", valor2);
                rpt.Parameters.AddWithValue("@fecha_ini1", TextBox6.Text);
                rpt.Parameters.AddWithValue("@fecha_fin1", TextBox7.Text);
                rpt.Parameters.AddWithValue("@comentario1", TextBox8.Text);

                rpt.Parameters.AddWithValue("@id_parametro2", DropDownList3.SelectedValue);
                rpt.Parameters.AddWithValue("@importe2", valor3);
                rpt.Parameters.AddWithValue("@fecha_ini2", TextBox10.Text);
                rpt.Parameters.AddWithValue("@fecha_fin2", TextBox11.Text);
                rpt.Parameters.AddWithValue("@comentario2", TextBox12.Text);

                rpt.Parameters.AddWithValue("@id_parametro3", DropDownList4.SelectedValue);
                rpt.Parameters.AddWithValue("@importe3", valor4);
                rpt.Parameters.AddWithValue("@fecha_ini3", TextBox14.Text);
                rpt.Parameters.AddWithValue("@fecha_fin3", TextBox15.Text);
                rpt.Parameters.AddWithValue("@comentario3", TextBox16.Text);

                rpt.ExecuteNonQuery();

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Gastos guardados con exito!!');", true);

                work.Close();

                if (IsPostBack)
                {
                    DropDownList1.SelectedValue = "3";
                    DropDownList2.SelectedValue = "3";
                    DropDownList3.SelectedValue = "3";
                    DropDownList4.SelectedValue = "3";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    TextBox13.Text = "";
                    TextBox14.Text = "";
                    TextBox15.Text = "";
                    TextBox16.Text = "";
                    Label7.Text = "";
                    Label8.Text = "";
                    Label9.Text = "";
                    Label10.Text = "";
                    Label11.Text = "";
                }
            }
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox1.Text = string.Format("{0:##,###.00}", Convert.ToDouble(TextBox1.Text));
        Label11.Text = "$";
        Label13.Text = "Total de Gasto Reportado ";
        Label7.Text = "$";
        resultado();
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        TextBox5.Text = string.Format("{0:##,###.00}", Convert.ToDouble(TextBox5.Text));
        Label10.Text = "$";
        resultado();
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        TextBox9.Text = string.Format("{0:##,###.00}", Convert.ToDouble(TextBox9.Text));
        Label9.Text = "$";
        resultado();
    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {
        TextBox13.Text = string.Format("{0:##,###.00}", Convert.ToDouble(TextBox13.Text));
        Label8.Text = "$";
        resultado();
    }
}