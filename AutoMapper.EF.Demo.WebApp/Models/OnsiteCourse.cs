using System;
using System.Collections.Generic;

namespace AutoMapper.EF.Demo.WebApp.Models
{
    public partial class OnsiteCourse
    {
        public int CourseID { get; set; }
        public string Location { get; set; }
        public string Days { get; set; }
        public System.DateTime Time { get; set; }
        public virtual Course Course { get; set; }
    }
}
