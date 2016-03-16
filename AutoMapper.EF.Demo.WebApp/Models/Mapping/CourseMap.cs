using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace AutoMapper.EF.Demo.WebApp.Models.Mapping
{
    public class CourseMap : EntityTypeConfiguration<Course>
    {
        public CourseMap()
        {
            // Primary Key
            this.HasKey(t => t.CourseID);

            // Properties
            this.Property(t => t.CourseID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Title)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Course");
            this.Property(t => t.CourseID).HasColumnName("CourseID");
            this.Property(t => t.Title).HasColumnName("Title");
            this.Property(t => t.Credits).HasColumnName("Credits");
            this.Property(t => t.DepartmentID).HasColumnName("DepartmentID");

            // Relationships
            this.HasMany(t => t.People)
                .WithMany(t => t.Courses)
                .Map(m =>
                    {
                        m.ToTable("CourseInstructor");
                        m.MapLeftKey("CourseID");
                        m.MapRightKey("PersonID");
                    });

            this.HasRequired(t => t.Department)
                .WithMany(t => t.Courses)
                .HasForeignKey(d => d.DepartmentID);

        }
    }
}
