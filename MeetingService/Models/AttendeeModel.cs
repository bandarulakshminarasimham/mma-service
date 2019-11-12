using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MeetingService.Models
{
    public class AttendeeModel : BaseModel
    {
        AttendeeModel()
        {
            this.Meeting_Attendees_Map = new List<Meeting_Attendees_MapModel>();
        }
        public int AttendeeId { get; set; }
        [Required]
        public string Name { get; set; }
        public bool? Status { get; set; }
        public string AttendedMeetingsSubjects { get; set; }
        public int AttendedMeetings
        {
            get
            {
                return Meeting_Attendees_Map.ToList().Count();
            }
        }


        public virtual ICollection<Meeting_Attendees_MapModel> Meeting_Attendees_Map { get; set; }
    }
}