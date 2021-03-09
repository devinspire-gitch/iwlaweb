using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MemberSuite.SDK.Concierge;
using MemberSuite.SDK.Searching;
using MemberSuite.SDK.Searching.Operations;
using MemberSuite.SDK.Types;
using GoogleMaps.LocationServices;
namespace DesWeb
{
    public partial class FAP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Session["params"] = null;
            Session["cityState"] = null;
            Session["zip"] = null;
            Session["company"] = null;
            Session["reqinfocom"] = null;

            if (txtCity.Text != "") {
                Session["cityState"] = this.txtCity.Text;
            }

            if (txtCompanyName.Text != "")
            {
                Session["company"] = txtCompanyName.Text;
            }


            Session["miles"] = this.ddlMiles.SelectedValue;
            if (txtZipCode.Text != "")
            {
                Session["zip"] = this.txtZipCode.Text;
            }

            List<string> searchParams = new List<string>();
            for (int i = 0; i < cbKeyword.Items.Count; i++)
            {

                if (cbKeyword.Items[i].Selected)
                {

                   searchParams.Add(cbKeyword.Items[i].Text);

                }

            }

            if (cbKeyword.Items.Count > 0)
            {
                Session["params"] = searchParams;
            }

            Response.Redirect("SearchFAP.aspx");

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Map")
            {

                //string col1 = ((TextBox)e.Item.FindControl("col1")).Text;
                //string col2 = ((TextBox)e.Item.FindControl("col2")).Text;


                string allKeys = Convert.ToString(e.CommandArgument);

                string[] arrKeys = new string[3];
                char[] splitter = { '|' };
                arrKeys = allKeys.Split(splitter);

                var address = arrKeys[0] + " ," + arrKeys[2] + " ," + arrKeys[3];

                var locationService = new GoogleLocationService("AIzaSyBKZp9cuEthSeBVTg51R2VYdebIyPIQwv8");
                var point = locationService.GetLatLongFromAddress(address);

                var latitude = point.Latitude;
                var longitude = point.Longitude;
                Response.Redirect("Map.aspx?lat=" + latitude + "&lng=" + longitude);
            }
         }

        protected void btnMap_Click(object sender, EventArgs e)
        {
            
            //Response.Redirect("Map.aspx?zip=" + this.txtZipCode.Text + "&search=" + this.txtCity.Text);
        }
    }
}