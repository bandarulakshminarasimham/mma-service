using AutoMapper;
using MeetingService.App_Start;
using MeetingService.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace MeetingService.Controllers
{
    [BasicAuthenticationFilter(false)]
    [RoutePrefix("api/user")]
    public class UserController : ApiController
    {
        private readonly IMMARepository _repository;
        private readonly IMapper _mapper;

        public UserController(IMMARepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        [Route()]
        public async Task<IHttpActionResult> Get(string username, string password)
        {
            try
            {
                var result = await _repository.GetUser(username, password);

                return Ok(result);
            }
            catch (Exception ex)
            {
                // TODO Add Logging
                return InternalServerError(ex);
            }
        }
    }
}
