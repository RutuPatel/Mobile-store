using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Assignment_SportsPro
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.Ignore("{resource}.axd/{*pathInfo}");

            routes.MapPageRoute("RegisterProducts", "CustomerSupport/RegisterProducts", "~/ProductRegistration.aspx");
            routes.MapPageRoute("CustomerSurvey", "CustomerSupport/CustomerSurvey", "~/CustomerSurvey.aspx");
            routes.MapPageRoute("SurveyComplete", "CustomerSupport/SurveyComplete", "~/SurveyComplete.aspx");
            routes.MapPageRoute("DisplayIncidents", "TechSupport/CustomerIncidentDisplay", "~/CustomerIncidentDisplay.aspx");
            routes.MapPageRoute("UpdateIncidents", "TechSupport/UpdateIncidents", "~/IncidentUpdate.aspx");

            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
        }
    }
}
