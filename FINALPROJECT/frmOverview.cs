using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace FINALPROJECT
{
    public partial class frmOverview : Form
    {
        public frmOverview()
        {
            InitializeComponent();
        }
        SqlConnection cnn = new SqlConnection(@"Data Source=DESKTOP-V35DH94\SQLEXPRESS;Initial Catalog=QLBH;Integrated Security=True");
        private void Form2_Load(object sender, EventArgs e)
        {
            cnn.Open();
            string sql = "select * from tbl_OverviewDeliveryNote";
            string sql2 = "select * from tbl_OverviewReceivedNote";// lay het du lieu trong bang sinh vien
            SqlCommand com = new SqlCommand(sql, cnn);
            SqlCommand com2 = new SqlCommand(sql2, cnn);//bat dau truy van
            com.CommandType = CommandType.Text;
            com2.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(com);
            SqlDataAdapter da2 = new SqlDataAdapter(com2);//chuyen du lieu ve
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();//tạo một kho ảo để lưu trữ dữ liệu
            da.Fill(dt);
            da2.Fill(dt2);// đổ dữ liệu vào kho
            cnn.Close();  // đóng kết nối
            dataGridView1.DataSource = dt;
            dataGridView2.DataSource = dt2;//đổ dữ liệu vào datagridview
        }
    }
}
