﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeetingService.Models
{
    public class UserModel: BaseModel
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }
}