//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MeetingService.Data.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Meeting_Attendees_Map
    {
        public int MapId { get; set; }
        public Nullable<int> MeetingId { get; set; }
        public Nullable<int> AttendeeId { get; set; }
        public Nullable<bool> Status { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    
        public virtual Attendee Attendee { get; set; }
        public virtual Meeting Meeting { get; set; }
    }
}
