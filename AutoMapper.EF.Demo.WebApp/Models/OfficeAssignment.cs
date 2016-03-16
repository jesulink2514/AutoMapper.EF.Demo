using System;
using System.Collections.Generic;

namespace AutoMapper.EF.Demo.WebApp.Models
{
    public partial class OfficeAssignment
    {
        public int InstructorID { get; set; }
        public string Location { get; set; }
        public byte[] Timestamp { get; set; }
        public virtual Person Person { get; set; }
    }
}
