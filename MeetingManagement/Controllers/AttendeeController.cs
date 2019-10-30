using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using MeetingManagement;
using MeetingManagement.Services;
using MeetingManagement.Models;


namespace MeetingManagement.Controllers
{
    public class AttendeeController : ApiController
    {
        private readonly AttendeeService _attendeeService = new AttendeeService();

        // GET api/Attendee
        public IEnumerable<AttendeeModel> GetAttendees()
        {
            IList<AttendeeModel> attendees = new List<AttendeeModel>();
            _attendeeService.GetAttendees().ToList().All(t =>
            {
                attendees.Add(new AttendeeModel
                {
                    id = t.AttendeeId,
                    name = t.Name
                });
                return true;
            });
            return attendees;
        }

        // GET api/Attendee/5
        [ResponseType(typeof(Attendee))]
        public IHttpActionResult GetAttendee(int id)
        {
            Attendee attendee = _attendeeService.GetAttendee(id);
            if (attendee == null)
            {
                return NotFound();
            }

            return Ok(attendee);
        }

        // PUT api/Attendee/5
        public IHttpActionResult PutAttendee(int id, Attendee attendee)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != attendee.AttendeeId)
            {
                return BadRequest();
            }


            try
            {
                _attendeeService.Update(attendee);

            }
            catch (DbUpdateConcurrencyException)
            {

            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST api/Attendee
        [ResponseType(typeof(Attendee))]
        public IHttpActionResult PostAttendee(Attendee attendee)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _attendeeService.Add(attendee);

            return CreatedAtRoute("DefaultApi", new { id = attendee.AttendeeId }, attendee);
        }

        // DELETE api/Attendee/5
        [ResponseType(typeof(Attendee))]
        public IHttpActionResult DeleteAttendee(int id)
        {
            Attendee attendee = _attendeeService.GetAttendee(id);
            if (attendee == null)
            {
                return NotFound();
            }

            _attendeeService.Delete(id);

            return Ok(attendee);
        }

        //private bool AttendeeExists(int id)
        //{
        //    return db.Attendees.Count(e => e.AttendeeId == id) > 0;
        //}
    }
}