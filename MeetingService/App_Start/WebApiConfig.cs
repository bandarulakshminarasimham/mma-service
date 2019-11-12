using Microsoft.Web.Http;
using Microsoft.Web.Http.Routing;
using Microsoft.Web.Http.Versioning;
using Microsoft.Web.Http.Versioning.Conventions;
using MeetingService.App_Start;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Mvc.Routing;
using System.Web.Http.Cors;

namespace MeetingService
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            var cors = new EnableCorsAttribute("http://localhost:4200", "*", "*");
            config.EnableCors(cors);

            // Web API configuration and services
            AutofacConfig.Register();

            config.Filters.Add(new BasicAuthenticationFilter());
            config.Filters.Add(new LoggingFilterAttribute()); 
            config.MessageHandlers.Add(new WrappingHandler());

            // Web API routes
            config.MapHttpAttributeRoutes();
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { controller = "HealthCheck", id = RouteParameter.Optional }
            );
        }
    }
}
