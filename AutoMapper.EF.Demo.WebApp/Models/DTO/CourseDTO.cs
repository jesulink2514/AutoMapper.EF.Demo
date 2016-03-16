using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoMapper.EF.Demo.WebApp.Models.DTO
{
    public class CourseDTO
    {
        public int CourseID { get; set; }
        public string Title { get; set; }
        public int Credits { get; set; }
        public int DepartmentID { get; set; }
        public string DepartmentName { get; set; }
        public int PeopleCount { get; set; }
    }
}