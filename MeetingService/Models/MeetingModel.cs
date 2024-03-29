﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MeetingService.Models
{
    public class MeetingModel
    {
        MeetingModel()
        {
            MDateTime = DateTime.Now;
            Attendees = new List<int>();
            Meeting_Attendees_Map = new List<Meeting_Attendees_MapModel>();
        }
        public int MeetingId { get; set; }
        [Required]
        public string Subject { get; set; }
        [Required]
        public string Agenda { get; set; }
        public System.DateTime MDateTime { get; set; }
        public Nullable<bool> Status { get; set; }

        public List<int> Attendees { get; set; }
        public string AttendeeNames { get; set; }

        public virtual ICollection<Meeting_Attendees_MapModel> Meeting_Attendees_Map { get; set; }
    }
}