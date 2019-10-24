using MeetingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingManagement.Services
{
    public class MeetingService
    {
        private readonly SqlDbContext db = new SqlDbContext();

        public void Add(Meeting meeting)
        {
            db.meetings.Add(meeting);

            try
            {
                db.SaveChanges();
                
            }
            catch
            {
                throw;
            }
        }
        public IEnumerable<Meeting> GetMeetings()
        {
            try
            {
                return db.meetings.ToList();
            }
            catch
            {
                throw;
            }

        }

        public Meeting GetMeeting(int id)
        {
            try
            {
                Meeting mt = db.meetings.Find(id);
                return mt;
            }
            catch
            {
                throw;
            }

        }

        public void Update(Meeting meeting)
        {
            try
            {
                db.Entry(meeting).State = System.Data.EntityState.Modified;
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
                Meeting mt = db.meetings.Find(id);
                db.meetings.Remove(mt);
                db.SaveChanges();
            }
            catch
            {
                throw;
            }
        }
    }
}