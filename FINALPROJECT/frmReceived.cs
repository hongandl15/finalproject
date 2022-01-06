using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace FINALPROJECT
{
    public partial class frmReceived : Form
    {
        public frmReceived()
        {
            InitializeComponent();
        }

        SqlConnection cnn = new SqlConnection(@"Data Source=DESKTOP-V35DH94\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True");
        private void connectsql()
        {
            cnn.Open();
            string sql = "select * from tbl_Beverage";  // lay het du lieu trong bang sinh vien
            SqlCommand com = new SqlCommand(sql, cnn); //bat dau truy van
            com.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(com); //chuyen du lieu ve
            DataTable dt = new DataTable(); //tạo một kho ảo để lưu trữ dữ liệu
            da.Fill(dt);  // đổ dữ liệu vào kho
            cnn.Close();  // đóng kết nối
            dataGridView1.DataSource = dt; //đổ dữ liệu vào datagridview
        }

        private void frmDelivery_Load(object sender, EventArgs e)
        {
            connectsql();
        }


        private void button1_Click(object sender, EventArgs e)
        {
            String qtt = dataGridView1.Rows[1].Cells["quantity"].Value.ToString();
            float total = 0;
            for (int i = 0; i <= 9; i++)
            {
                int quantity = int.Parse(dataGridView1.Rows[i].Cells["quantity"].Value.ToString());
                int cost = int.Parse(dataGridView1.Rows[i].Cells["cost"].Value.ToString());
                int totalprice = quantity * cost;
                dataGridView1.Rows[i].Cells[0].Value = totalprice;
                total += totalprice;
            }
            txtTotal.Text = total.ToString();
            cnn.Open();

            string sql = "insert into tbl_OverviewReceivedNote(ReceivedID, Date, Agent, Address, Phone, TotalPrice) " +
                "Values(' " + txtID.Text + "', '" + txtDate.Text.ToString() + "', '" + txtAgent.Text.ToString() + "', '" + txtPhone.Text + "' , '" + txtAddress.Text + "' , '" + txtTotal.Text + "' )";
            SqlCommand com = new SqlCommand(sql, cnn); //bat dau truy van
            com.ExecuteNonQuery();
            cnn.Close();

        }
    }
}
