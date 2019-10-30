using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MeetingManagement.Services
{
    public interface IUserService
    {
        User GetUser(string _userName);
    }
}
