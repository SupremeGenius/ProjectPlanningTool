﻿using Microsoft.AspNetCore.Mvc.Filters;
using TeamBins.Controllers;


namespace TeamBins.Infrastrucutre.Filters
{

    public class ReqProcessFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            var c = context.Controller as BaseController;
            if (c != null)
            {
                c.ViewBag.AppBaseUrl = c.AppBaseUrl;
            }

            base.OnActionExecuting(context);
        }
    }
}
