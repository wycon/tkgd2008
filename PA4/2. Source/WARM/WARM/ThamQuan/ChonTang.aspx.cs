using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WARM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string url = ((DropDownList)Wizard1.WizardSteps[0].FindControl("ddl_chonchedo")).SelectedItem.Value + ((DropDownList)Wizard1.WizardSteps[1].FindControl("ddl_chontang")).SelectedItem.Value;
            Response.Redirect(url);
        }
    }
}