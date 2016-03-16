using AutoMapper.EF.Demo.WebApp.Models;
using AutoMapper.EF.Demo.WebApp.Models.DTO;
using AutoMapper.QueryableExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AutoMapper.EF.Demo.WebApp.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var ctx = new SchoolContext();
            var courses = ctx.Courses
            .Select(x => new CourseDTO()
            {
                CourseID = x.CourseID,
                Title = x.Title,
                Credits = x.Credits,
                DepartmentID = x.DepartmentID,
                DepartmentName = x.Department.Name,                
                PeopleCount = x.People.Count
            }).ToList();
            return View(courses);
        }

        public ActionResult AutoMapper()
        {
            var config = new MapperConfiguration(
                cfg =>
                {
                    cfg.CreateMap<Course, CourseDTO>();
                });

            var ctx = new SchoolContext();
            var courses = ctx.Courses.ProjectTo<CourseDTO>(config).ToList();
            return View("Index",courses);
        }

        public ActionResult Decoupled()
        {
            var config = new MapperConfiguration(
               cfg =>
               {
                   cfg.CreateMap<Course, CourseDTO>();
               });

            var expressionBuilder = new ExpressionBuilder(config);
            var projection = expressionBuilder.CreateMapExpression<Course, CourseDTO>();

            var ctx = new SchoolContext();
            var courses = ctx.Courses.Select(projection).ToList();

            return View("Index", courses);
        }
    }
}