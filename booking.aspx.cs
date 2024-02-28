using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LakDeranaPublic
{
    public partial class booking : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOPDELLNAVE;Initial Catalog=MSS-Lakderana;Integrated Security=True");
        SqlCommand cmd;
        SqlCommand cmd1;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TxtChekinDate.Text = DTPChekin.SelectedDate.ToString("yyyy/MM/dd");
            DTPChekin.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DTPChekin.Visible = true;
        }

        protected void BtnCheckout_Click(object sender, EventArgs e)
        {
            DTPChekout.Visible = true;
        }

        protected void DTPChekout_SelectionChanged(object sender, EventArgs e)
        {
            TxtChekOutDate.Text = DTPChekout.SelectedDate.ToString("yyyy/MM/dd");
            DTPChekout.Visible = false;
        }

        protected void CmbLocation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            cmd = new SqlCommand("SELECT COUNT(dbo.Room_info.Room_Id) AS Ava_cnt  FROM dbo.Room_info WHERE dbo.Room_info.Occupied = 'N' AND dbo.Room_info.Hotel_Id ='"+CmbLocation.SelectedValue+"' GROUP BY dbo.Room_info.Room_Id ", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();

            if(reader.HasRows)
            {
                if (reader.GetInt32(0) >= 0)
                {
                    LblAvail.Text = "Booking Available";
                    Button1.Visible = true;
                    reader.Close();

                    cmd1 = new SqlCommand("SELECT top 1 dbo.Room_info.Room_Id FROM dbo.Room_info WHERE dbo.Room_info.Hotel_Id = '" + CmbLocation.SelectedValue + "' AND dbo.Room_info.Occupied = 'N' ", conn);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    reader1.Read();

                    if (reader1.HasRows)
                    {
                        LblRoomId.Text = Convert.ToString(reader1.GetInt32(0));
                    }
                    reader1.Close();
                }
            }            
            else
            {
                LblAvail.Text = "House Full";
                Button1.Visible = false;
               

            }            
            conn.Close();
        }

        protected void TxtCantNo_TextChanged(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            cmd = new SqlCommand("SELECT dbo.Customer.Cus_Id, dbo.Customer.Cus_Name FROM dbo.Customer WHERE dbo.Customer.Cus_Phone ='"+TxtCantNo.Text+"' ", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();

            if (reader.HasRows)
            {
                LblcutId.Text = Convert.ToString(reader.GetInt32(0));
                TxtCusName.Text = reader.GetString(1);
            } 
            else
            {
                TxtCusName.Text = "";
                TxtCusName.Focus();
            }
            reader.Close();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;

            if (LblcutId.Text=="0")
            {
                cmd.CommandText = "INSERT INTO Customer VALUES('" + TxtCusName.Text + "','0','0','"+TxtCantNo.Text+"')";
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("SELECT dbo.Customer.Cus_Id WHERE dbo.Customer.Cus_Name='"+TxtCusName.Text+"' AND dbo.Customer.Cus_Phone ='" + TxtCantNo.Text + "'   ", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                LblcutId.Text = Convert.ToString(reader.GetInt32(0));
                reader.Close();
            }

            
            cmd.CommandText = "INSERT INTO res_info VALUES('" + TxtChekinDate.Text + "','" + TxtChekOutDate.Text + "','" + LblcutId.Text + "','" +LblRoomId.Text+ "','0','0','0','0',' ')";
            cmd.ExecuteNonQuery();            

            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;            
            cmd = new SqlCommand("UPDATE Room_info SET Occupied='P' WHERE Room_Id='"+LblRoomId.Text+"'", conn);           
            cmd.ExecuteNonQuery();

            conn.Close();
            
            Response.Write("<script>alert('Boking successfull')</script>");
        }
    }
}