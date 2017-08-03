using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Reg1 : System.Web.UI.Page
{
    string hosid;
    string hosname;
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Welcome.aspx";
        hosid = Request.QueryString.ToString();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite1\App_Data\OrganBank.mdf;Integrated Security=True;");
        conn.Open();
        string checkName = "select Name from Hospital1 where Hid = '" + hosid + "' ";
        SqlCommand com = new SqlCommand(checkName, conn);
        hosname = com.ExecuteScalar().ToString();
        conn.Close();
        Label2.Text = hosid;
        Label3.Text = hosname;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite1\App_Data\OrganBank.mdf;Integrated Security=True;");
        Con.Open();
        string idnum = TextBox20.Text;
        string checkPat = "select count(*) from Patient1 where Pid = '" + idnum + "' ";
        SqlCommand com = new SqlCommand(checkPat, Con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        Con.Close();
        if (temp == 1)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Patient with ID '" + idnum + "' already exits";
        }
        else
        {
            Con.Open();
            string gen = DropDownList1.Text;

            string insertQuery1 = "INSERT INTO Patient1(Pid,FName,MName,LName,Age,Gender) VALUES('" + idnum + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+gen+"')";
            SqlCommand insertCmd1 = new SqlCommand(insertQuery1, Con);
            int result1 = insertCmd1.ExecuteNonQuery();

            string insertQuery2 = "INSERT INTO Patient2(Pid,BloodGroup,Disease,OrganName) VALUES('" + idnum + "','" + TextBox18.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand insertCmd2 = new SqlCommand(insertQuery2, Con);
            int result2 = insertCmd2.ExecuteNonQuery();

            string insertQuery3 = "INSERT INTO Patient3(Pid,Hid,HospitalName,DrName,DrSpecialization) VALUES('" + idnum + "','" + hosid + "','" + hosname + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
            SqlCommand insertCmd3 = new SqlCommand(insertQuery3, Con);
            int result3 = insertCmd3.ExecuteNonQuery();

            string insertQuery4 = "INSERT INTO Patient4(Pid,PhNo,Email,AddrL1,AddrL2,City,State,Zip) VALUES('" + idnum + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
            SqlCommand insertCmd4 = new SqlCommand(insertQuery4, Con);
            int result4 = insertCmd4.ExecuteNonQuery();


            if (result1 == 1 && result2 == 1 && result3 == 1 && result4 == 1)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                TextBox1.Text = " ";
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
                TextBox9.Text = " ";
                TextBox10.Text = " ";
                TextBox11.Text = " ";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                TextBox15.Text = " ";
                TextBox16.Text = " ";
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
                TextBox9.Text = " ";
                TextBox10.Text = " ";
                TextBox11.Text = " ";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                TextBox15.Text = " ";
                TextBox16.Text = " ";
                TextBox17.Text = " ";
                TextBox18.Text = " ";
                TextBox20.Text = " ";
                Label1.Text = " ";
                Label1.Text = "Registration Unsuccessful";
            }
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
        TextBox9.Text = " ";
        TextBox10.Text = " ";
        TextBox11.Text = " ";
        TextBox12.Text = " ";
        TextBox13.Text = " ";
        TextBox14.Text = " ";
        TextBox15.Text = " ";
        TextBox16.Text = " ";
        TextBox17.Text = " ";
        TextBox18.Text = " ";
        TextBox20.Text = " ";
        Label1.Text = " ";
    }
}