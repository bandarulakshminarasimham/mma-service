using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingManagement.Models
{
    public class MeetingModel
    {
        public MeetingModel() 
        {
            this.Attendees = new List<int>();
        }
        public int MeetingId { get; set; }
        public string Subject { get; set; }
        public string Agenda { get; set; }
        public DateTime MDateTime { get; set; }
        public IList<int> Attendees { get; set; }

    }
}