using System;
using System.Data;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.App.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetNews();
        }
        public void GetNews()
        {
            StringBuilder str = new StringBuilder();
            Models.NewsDBEntities db = new Models.NewsDBEntities();
            var query = db.News;
            foreach(var n in query)
            {
               
                str.Append("<tr><td>" + n.NewsID + "</td>");
                str.Append("<td>" + n.NewsTitle + "</td>");
                str.Append("<td>" + n.NewsSummary + "</td>");
                str.Append($"<td><a class=\"btn btn-info\" href=\"Action.aspx?newsid={n.NewsID}\">ویرایش</a></td></tr>");
                
            }
            tbody.Controls.Add(new Literal { Text = str.ToString() });
        }
    }
}