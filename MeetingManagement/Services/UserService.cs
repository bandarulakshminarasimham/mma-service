using MeetingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingManagement.Services
{
    public class UserService : IUserService
    {
        private readonly SqlDbContext db;
        public UserService()
        { 
            this.db = new SqlDbContext();
        }
        
        public User GetUser(string _userName)
        {
            try
            {
                User user = this.db.users.ToList().Find(t => t.Username == _userName);
                return user;
            }
            catch
            {
                throw;
            }

        }
    }
}