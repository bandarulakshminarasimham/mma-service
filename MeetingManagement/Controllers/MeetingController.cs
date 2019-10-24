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

namespace MeetingManagement.Controllers
{
    public class MeetingController : ApiController
    {
        private readonly MeetingService _meetingService = new MeetingService();

        // GET api/Meeting
        public IEnumerable<Meeting> GetMeetings()
        {
            return _meetingService.GetMeetings();
        }

        // GET api/Meeting/5
        [ResponseType(typeof(Meeting))]
        public IHttpActionResult GetMeeting(int id)
        {
            Meeting meeting = _meetingService.GetMeeting(id);
            if (meeting == null)
            {
                return NotFound();
            }

            return Ok(meeting);
        }

        // PUT api/Meeting/5
        public IHttpActionResult PutMeeting(int id, Meeting meeting)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != meeting.MeetingId)
            {
                return BadRequest();
            }

            try
            {
                _meetingService.Update(meeting);
            }
            catch (DbUpdateConcurrencyException)
            {
                //if (!MeetingExists(id))
                //{
                //    return NotFound();
                //}
                //else
                //{
                //    throw;
                //}
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST api/Meeting
        [ResponseType(typeof(Meeting))]
        public IHttpActionResult PostMeeting(MeetingManagement.Models.MeetingModel mm)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            //_meetingService.Add(meeting);
            Meeting m = new Meeting();
            m.Subject = mm.Subject;
            m.Agenda = mm.Agenda;
            m.MDateTime = mm.MDateTime;
            

            mm.Attendees.All(t => 
            {
                m.Meeting_Attendees_Map.Add(new Meeting_Attendees_Map { AttendeeId = t });
                return true;
            });
            _meetingService.Add(m);
            return Ok();
        }

        // DELETE api/Meeting/5
        [ResponseType(typeof(Meeting))]
        public IHttpActionResult DeleteMeeting(int id)
        {
            Meeting meeting = _meetingService.GetMeeting(id);
            if (meeting == null)
            {
                return NotFound();
            }
            _meetingService.Delete(id);
            return Ok(meeting);
        }

        //private bool MeetingExists(int id)
        //{
        //    return db.Meetings.Count(e => e.MeetingId == id) > 0;
        //}
    }
}