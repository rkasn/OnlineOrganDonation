using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HospReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Welcome.aspx";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite1\App_Data\OrganBank.mdf;Integrated Security=True;");
        Con.Open();
        string hid = TextBox1.Text;
        string checkHos = "select count(*) from Hospital1 where Hid = '" + hid + "' ";
        SqlCommand com = new SqlCommand(checkHos, Con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        Con.Close();
        if (temp == 1)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Hospital with ID '" + hid + "' already exits";
        }
        else if(TextBox9.Text == TextBox11.Text)
        {
            Con.Open();

            string insertQuery1 = "INSERT INTO Hospital1(Hid,Name,PhNo,Email,CMO_Name,CMO_PhNo,CMO_Email) VALUES('" + hid + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox3.Text + "','" + TextBox10.Text + "','" + TextBox20.Text+"')";
            SqlCommand insertCmd1 = new SqlCommand(insertQuery1, Con);
            int result1 = insertCmd1.ExecuteNonQuery();

            string insertQuery2 = "INSERT INTO Hospital2(Hid,AddrL1,AddrL2,City,State,ZIP) VALUES('" + hid + "','" + TextBox4.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand insertCmd2 = new SqlCommand(insertQuery2, Con);
            int result2 = insertCmd2.ExecuteNonQuery();

            string insertQuery3 = "INSERT INTO Login(userName,password) VALUES('"+hid+"','"+TextBox9.Text+"')";
            SqlCommand insertCmd3 = new SqlCommand(insertQuery3, Con);
            int result3 = insertCmd3.ExecuteNonQuery();

            if (result1 == 1 && result2 == 1 && result3 == 1)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
                TextBox7.Text = " ";
                TextBox8.Text = " ";
                TextBox10.Text = " ";
                TextBox17.Text = " ";
                TextBox18.Text = " ";
                TextBox20.Text = " ";
                Label1.Text = " ";
                Label1.Text = "Registration Successful";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
                TextBox7.Text = " ";
                TextBox8.Text = " ";
                TextBox10.Text = " ";
                TextBox17.Text = " ";
                TextBox18.Text = " ";
                TextBox20.Text = " ";
                Label1.Text = " ";
                Label1.Text = "Registration Unsuccessful";
            }
        }else
        {
            Label1.Text = "Password Don't Match";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
        TextBox6.Text = " ";
        TextBox7.Text = " ";
        TextBox8.Text = " ";
        TextBox10.Text = " ";
        TextBox17.Text = " ";
        TextBox18.Text = " ";
        TextBox20.Text = " ";
        Label1.Text = " ";
    }
}