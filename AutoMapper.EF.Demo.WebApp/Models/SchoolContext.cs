using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using AutoMapper.EF.Demo.WebApp.Models.Mapping;

namespace AutoMapper.EF.Demo.WebApp.Models
{
    public partial class SchoolContext : DbContext
    {
        static SchoolContext()
        {
            Database.SetInitializer<SchoolContext>(null);
        }

        public SchoolContext()
            : base("Name=SchoolContext")
        {
        }

        public DbSet<Course> Courses { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<OfficeAssignment> OfficeAssignments { get; set; }
        public DbSet<OnlineCourse> OnlineCourses { get; set; }
        public DbSet<OnsiteCourse> OnsiteCourses { get; set; }
        public DbSet<Person> People { get; set; }
        public DbSet<StudentGrade> StudentGrades { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new CourseMap());
            modelBuilder.Configurations.Add(new DepartmentMap());
            modelBuilder.Configurations.Add(new OfficeAssignmentMap());
            modelBuilder.Configurations.Add(new OnlineCourseMap());
            modelBuilder.Configurations.Add(new OnsiteCourseMap());
            modelBuilder.Configurations.Add(new PersonMap());
            modelBuilder.Configurations.Add(new StudentGradeMap());
        }
    }
}
