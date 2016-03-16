using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace AutoMapper.EF.Demo.WebApp.Models.Mapping
{
    public class OnlineCourseMap : EntityTypeConfiguration<OnlineCourse>
    {
        public OnlineCourseMap()
        {
            // Primary Key
            this.HasKey(t => t.CourseID);

            // Properties
            this.Property(t => t.CourseID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.URL)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("OnlineCourse");
            this.Property(t => t.CourseID).HasColumnName("CourseID");
            this.Property(t => t.URL).HasColumnName("URL");

            // Relationships
            this.HasRequired(t => t.Course)
                .WithOptional(t => t.OnlineCourse);

        }
    }
}
