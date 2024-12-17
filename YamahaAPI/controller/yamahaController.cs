using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using YamahaAPI.Procedure;

namespace YamahaAPI
{
    [RoutePrefix("yamaha")]
    public class yamahaController :ApiController
    {
            [HttpGet]
            [Route("getMotorcycles")]
            public List<usp_get_motorcycles_with_specifications_Result> getMotorcycles()
            {
                List<usp_get_motorcycles_with_specifications_Result> li = new List<usp_get_motorcycles_with_specifications_Result>();
                try
                {
                    yamahaEntities motor = new yamahaEntities();
                    li = motor.usp_get_motorcycles_with_specifications().ToList();

                }
                catch (Exception e) { }

                return li;
            }

        [HttpGet]
        [Route("getScooters")]
        public List<usp_get_scooters_with_specifications_Result> getScooters()
        {
            List<usp_get_scooters_with_specifications_Result> li = new List<usp_get_scooters_with_specifications_Result>();
            try
            {
                yamahaEntities motor = new yamahaEntities();
                li = motor.usp_get_scooters_with_specifications().ToList();
            }
            catch (Exception e) { }
            return li;
        }

        [HttpGet]
        [Route("getHelmets")]
        public List<usp_get_helmets_Result> getHelmets()
        {
            List<usp_get_helmets_Result> li = new List<usp_get_helmets_Result>();
            try
            {
                yamahaEntities motor = new yamahaEntities();
                li = motor.usp_get_helmets().ToList();
            }
            catch(Exception e)
            {

            }
            return li;
        }
           
        [HttpPost]
        [Route("insertBookingDetails")]
        public void insertBookingDetails(motorProvider pvdr)
        {
            try
            {
                yamahaEntities motor = new yamahaEntities();
                motor.InsertUserBooking(pvdr.firstName, pvdr.lastName, pvdr.email, pvdr.gender, pvdr.pincode, pvdr.city, pvdr.vehicle, pvdr.helmet, pvdr.licenseType, pvdr.phoneNumber,pvdr.bookingDate,
                    pvdr.totalCost);

            }
             catch(Exception e)
            {   

            }
         }

        [HttpGet]
        [Route("getRecords")]
        public List<usp_getbookingDetails_Result> getRecords()
        {
            List<usp_getbookingDetails_Result> li = new List<usp_getbookingDetails_Result>();
            try
            {
                yamahaEntities motor = new yamahaEntities();
                li = motor.usp_getbookingDetails().ToList();
            }
            catch(Exception e) { }
            return li;
        }

        [HttpDelete]
        [Route("delete")]
        public void deleteRecords(motorProvider pvdr)
        {
            try
            {
                yamahaEntities motor = new yamahaEntities();
                motor.usp_delete_booking_record(pvdr.id);
            }
            catch (Exception e) { }
        }

        [HttpPost]
        [Route("update")]
        public void updateRecords(motorProvider pvdr)
        {
            try
            {
                yamahaEntities motor = new yamahaEntities();
                motor.usp_update_userDetails(pvdr.id, pvdr.firstName, pvdr.lastName, pvdr.email, pvdr.gender, pvdr.pincode, pvdr.city, pvdr.vehicle, pvdr.helmet, pvdr.licenseType, pvdr.phoneNumber, pvdr.bookingDate, pvdr.totalCost);
            }
            catch(Exception e) { }
        }
    }
}
