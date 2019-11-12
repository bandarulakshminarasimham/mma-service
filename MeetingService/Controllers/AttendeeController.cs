using AutoMapper;
using MeetingService.App_Start;
using MeetingService.Data;
using MeetingService.Data.Entities;
using MeetingService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace MeetingService.Controllers
{
    [BasicAuthenticationFilter(true)]
    [RoutePrefix("api/attendee")]
    public class AttendeeController : ApiController
    {
        private readonly IMMARepository _repository;
        private readonly IMapper _mapper;

        public AttendeeController(IMMARepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;

        }

        [Route()]
        public async Task<IHttpActionResult> Get()
        {
            try
            {
                var result = await _repository.GetAllAttendeeAsync();
                IList<AttendeeModel> attendees = new List<AttendeeModel>();
                result.All(t =>
                {
                    var _attendees = _mapper.Map<AttendeeModel>(t);
                    _attendees.AttendedMeetingsSubjects = string.Join(Environment.NewLine, t.Meeting_Attendees_Map.ToList().Select(a => (a.Meeting != null ? string.Format("{0}) {1}", a.Meeting.MeetingId, a.Meeting.Subject) : "")).ToList());
                    attendees.Add(_attendees);
                    return true;
                });

                return Ok(attendees);
            }
            catch (Exception ex)
            {
                // TODO Add Logging
                return InternalServerError(ex);
            }
        }
        [Route()]
        public async Task<IHttpActionResult> Get(int id)
        {
            try
            {
                var result = await _repository.GetAttendeeAsync(id);
                var attendee = _mapper.Map<IEnumerable<MeetingModel>>(result);

                return Ok(attendee);
            }
            catch (Exception ex)
            {
                // TODO Add Logging
                return InternalServerError(ex);
            }
        }
        [Route()]
        public async Task<IHttpActionResult> Post(AttendeeModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var attdendee = _mapper.Map<Attendee>(model);

                    _repository.AddAttendee(attdendee);

                    if (await _repository.SaveChangesAsync())
                    {
                        var newModel = _mapper.Map<AttendeeModel>(attdendee);
                        return Ok(newModel);
                    }
                }
                return BadRequest(ModelState);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

    }
}