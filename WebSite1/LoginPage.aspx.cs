using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/HospReg.aspx";
        HyperLink2.NavigateUrl = "~/Welcome.aspx";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite1\App_Data\OrganBank.mdf;Integrated Security=True;");
        conn.Open();
        string user = TextBox1.Text;
        string checkUser = "select count(*) from Login where userName = '"+user+"' ";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1 && user != "admin")
        {
            conn.Open();
            string checkPassword = "select password from Login where userName = '" + TextBox1.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPassword, conn);
            string password = passCom.ExecuteScalar().ToString();
            conn.Close();
            if (password == TextBox2.Text)
            {
                //Session["New"] = TextBoxUN.Text;
                //Response.Write("Login Successful");
                Session["Username"] = TextBox1.Text;
                Response.Redirect("PatientReg.aspx?" + TextBox1.Text);
            }
            else
            {
                //Response.Write("Incorrect Password");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password');</script>");
            }
        }
        else if(user == "admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("Admin.aspx?" + TextBox1.Text);
        }
    }
}