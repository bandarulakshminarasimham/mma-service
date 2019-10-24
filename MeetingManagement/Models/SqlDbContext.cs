using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MeetingManagement.Models
{
    public class SqlDbContext : DbContext
    {
        public SqlDbContext()
            : base("name = MeetingManagementDBEntities")
        {

        }

        public DbSet<Meeting> meetings { get; set; }
        public DbSet<Attendee> attendees { get; set; }
    }
}