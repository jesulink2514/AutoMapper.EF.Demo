using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace AutoMapper.EF.Demo.WebApp.Models.Mapping
{
    public class StudentGradeMap : EntityTypeConfiguration<StudentGrade>
    {
        public StudentGradeMap()
        {
            // Primary Key
            this.HasKey(t => t.EnrollmentID);

            // Properties
            // Table & Column Mappings
            this.ToTable("StudentGrade");
            this.Property(t => t.EnrollmentID).HasColumnName("EnrollmentID");
            this.Property(t => t.CourseID).HasColumnName("CourseID");
            this.Property(t => t.StudentID).HasColumnName("StudentID");
            this.Property(t => t.Grade).HasColumnName("Grade");

            // Relationships
            this.HasRequired(t => t.Course)
                .WithMany(t => t.StudentGrades)
                .HasForeignKey(d => d.CourseID);
            this.HasRequired(t => t.Person)
                .WithMany(t => t.StudentGrades)
                .HasForeignKey(d => d.StudentID);

        }
    }
}
