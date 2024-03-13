using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_musaoglu
{
    public partial class frm_DepartmentDataEntryUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            SqlDataSource2.InsertParameters["Dept_Name"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Dept_Phone"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Manager_ID"].DefaultValue = DropDownList1.SelectedValue;



            int s = SqlDataSource2.Insert();



            if (s > 0)
            {
                Label4.Text = "Yeni Bölüm: <b>" + TextBox2.Text + "</b><p>Başarı ile eklendi.";
                Label4.Visible = true;
            }
            else
                Label4.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi kontrol ettikten sonra Tekrar Deneyiniz!";
            Label4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            DropDownList1.Visible = true;
            Button3.Visible = true;
            Button4.Visible = false;

        }
    }
}