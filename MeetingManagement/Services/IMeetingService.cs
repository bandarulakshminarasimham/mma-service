using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingManagement.Services
{
    public interface IMeetingService
    {
        void Add(Meeting meeting);
        void Update(Meeting meeting);
        void Delete(int meetingId);
        Meeting GetMeeting(int meetingId);
        IEnumerable<Meeting> GetMeetings();
    }
}