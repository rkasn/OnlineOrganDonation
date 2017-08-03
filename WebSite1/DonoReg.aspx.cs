using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DonoReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Welcome.aspx";
        //TextBox1.Text=Request.ServerVariables["SERVER_NAME"];
        //string url = HttpContext.Current.Request.Url.ToString();
        //string[] tempArray = url.Split('/');
        //string serverName = tempArray[0] + "/" + tempArray[1] + "/" + tempArray[2];
        // = serverName;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite1\App_Data\OrganBank.mdf;Integrated Security=True;");
        Con.Open();
        string Did = TextBox20.Text+"/BLR/1000";
        string checkDon = "select count(*) from Donor1 where Did = '" + Did + "' ";
        SqlCommand com = new SqlCommand(checkDon, Con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        Con.Close();
        if (temp == 1)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Donor with ID '" + Did + "' already exits";
        }
        else
        {
            Con.Open();

            string insertQuery1 = "INSERT INTO Donor1(Did,F_Name,M_Name,L_Name,Age,Gender) VALUES('" + Did + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList2.Text + "')";
            SqlCommand insertCmd1 = new SqlCommand(insertQuery1, Con);
            int result1 = insertCmd1.ExecuteNonQuery();

            string insertQuery2 = "INSERT INTO Donor2(Did,PhNo,Email,EM_Name,EM_PhNo) VALUES('" + Did + "','" + TextBox4.Text + "','" + TextBox9.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "')";
            SqlCommand insertCmd2 = new SqlCommand(insertQuery2, Con);
            int result2 = insertCmd2.ExecuteNonQuery();

            string insertQuery3 = "INSERT INTO Donor3(Did,AddrL1,AddrL2,City,State,ZIP) VALUES('" + Did + "','" + TextBox14.Text + "','" + TextBox13.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox5.Text + "')";
            SqlCommand insertCmd3 = new SqlCommand(insertQuery3, Con);
            int result3 = insertCmd3.ExecuteNonQuery();

            if (result1 == 1 && result2 == 1 && result3 == 1)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox7.Text = " ";
                TextBox8.Text = " ";
                TextBox20.Text = " ";
                TextBox9.Text = " ";
                TextBox11.Text = " ";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                TextBox15.Text = " ";
                TextBox16.Text = " ";
                Label1.Text = " ";
                Label1.Text = "Registration Successful";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox7.Text = " ";
                TextBox8.Text = " ";
                TextBox20.Text = " ";
                TextBox9.Text = " ";
                TextBox11.Text = " ";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                TextBox15.Text = " ";
                TextBox16.Text = " ";
                Label1.Text = " ";
                Label1.Text = "Registration Unsuccessful";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
        TextBox7.Text = " ";
        TextBox8.Text = " ";
        TextBox20.Text = " ";
        TextBox9.Text = " ";
        TextBox11.Text = " ";
        TextBox12.Text = " ";
        TextBox13.Text = " ";
        TextBox14.Text = " ";
        TextBox15.Text = " ";
        TextBox16.Text = " ";
        Label1.Text = " ";
    }
}