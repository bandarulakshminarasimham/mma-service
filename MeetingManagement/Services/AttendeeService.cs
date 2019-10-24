using MeetingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingManagement.Services
{
    public class AttendeeService
    {
        private readonly SqlDbContext db = new SqlDbContext();
        public void Add(Attendee attendee)
        {
            db.attendees.Add(attendee);

            try
            {
                db.SaveChanges();
            }
            catch
            {
                throw;
            }
        }
        public IEnumerable<Attendee> GetAttendees()
        {
            try
            {
                return db.attendees.ToList();
            }
            catch
            {
                throw;
            }

        }

        public Attendee GetAttendee(int id)
        {
            try
            {
                Attendee at = db.attendees.Find(id);
                return at;
            }
            catch
            {
                throw;
            }

        }

        public void Update(Attendee attendee)
        {
            try
            {
                db.Entry(attendee).State = System.Data.EntityState.Modified;
                db.SaveChanges();
            }
            catch
            {
                throw;
            }
        }

        public void Delete(int id)
        {
            try
            {
                Attendee at = db.attendees.Find(id);
                db.attendees.Remove(at);
                db.SaveChanges();
            }
            catch
            {
                throw;
            }
        }
    }
}