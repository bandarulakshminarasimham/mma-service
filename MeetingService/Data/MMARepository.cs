using MeetingService.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.Entity.Validation;

namespace MeetingService.Data
{
    public class MMARepository : IMMARepository
    {
        private readonly MeetingManagementEntities _context;

        public MMARepository(MeetingManagementEntities context)
        {
            _context = context;
        }
        public async System.Threading.Tasks.Task<bool> SaveChangesAsync()
        {


            try
            {
                // Could also be before try if you know the exception occurs in SaveChanges
                // Only return success if at least one row was changed
                return (await _context.SaveChangesAsync()) > 0;
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public async System.Threading.Tasks.Task<Meeting[]> GetAllMeetingsAsync()
        {
            IQueryable<Meeting> query = _context.Meetings;
            // Order It
            query = query.OrderByDescending(c => c.CreatedDate);

            return await query.ToArrayAsync();
        }


        public async Task<Meeting> GetMeetingAsync(int id)
        {
            IQueryable<Meeting> query = _context.Meetings.Where(t => t.MeetingId == id);

            // Order It
            query = query.OrderByDescending(c => c.CreatedDate);

            return await query.FirstOrDefaultAsync();
        }


        public async Task<User> GetUser(string name, string password)
        {
            IQueryable<User> query = _context.Users.Where(t => (t.Username.ToUpper() == name.ToUpper() && t.Password == password));

            return await query.FirstOrDefaultAsync();
        }

        public void AddMeeting(Meeting meeting)
        {
            _context.Meetings.Add(meeting);
        }


        public async Task<Attendee[]> GetAllAttendeeAsync()
        {
            IQueryable<Attendee> query = _context.Attendees;

            // Order It
            query = query.OrderByDescending(c => c.CreatedDate);

            return await query.ToArrayAsync();
        }


        public void AddAttendee(Attendee attendee)
        {
            _context.Attendees.Add(attendee);
        }


        public async Task<Attendee> GetAttendeeAsync(int id)
        {
            IQueryable<Attendee> query = _context.Attendees.Where(t => t.AttendeeId == id);

            // Order It
            query = query.OrderByDescending(c => c.CreatedDate);

            return await query.FirstOrDefaultAsync();
        }
    }
}