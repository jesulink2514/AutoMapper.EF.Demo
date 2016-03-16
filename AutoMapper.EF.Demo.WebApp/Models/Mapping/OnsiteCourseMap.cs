using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace AutoMapper.EF.Demo.WebApp.Models.Mapping
{
    public class OnsiteCourseMap : EntityTypeConfiguration<OnsiteCourse>
    {
        public OnsiteCourseMap()
        {
            // Primary Key
            this.HasKey(t => t.CourseID);

            // Properties
            this.Property(t => t.CourseID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Location)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Days)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("OnsiteCourse");
            this.Property(t => t.CourseID).HasColumnName("CourseID");
            this.Property(t => t.Location).HasColumnName("Location");
            this.Property(t => t.Days).HasColumnName("Days");
            this.Property(t => t.Time).HasColumnName("Time");

            // Relationships
            this.HasRequired(t => t.Course)
                .WithOptional(t => t.OnsiteCourse);

        }
    }
}
