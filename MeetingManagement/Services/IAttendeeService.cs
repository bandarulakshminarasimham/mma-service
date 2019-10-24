using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingManagement.Services
{
    public interface IAttendeeService
    {
        void Add(Attendee attendee);
        void Update(Attendee attendee);
        void Delete(int attendeeId);
        Attendee GetAttendee(int attendeeId);
        IEnumerable<Attendee> GetAttendees();
    }
}