using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace YamahaAPI
{
    [RoutePrefix("yamaha")]
    public class controller:ApiController
    {
        [HttpGet]
        [Route("getMotorcycles")]
        public List<usp_get_motorcycles_with_specifications_Result> getMotorcycles(){
            List<usp_get_motorcycles_with_specifications_Result> li = new List<usp_get_motorcycles_with_specifications_Result>();
            try
            {
                yamahaEntities motor = new yamahaEntities();
                li = motor.usp_get_motorcycles_with_specifications().ToList();
               
            }
            catch (Exception e) { }

            return li;
        }
    }
}