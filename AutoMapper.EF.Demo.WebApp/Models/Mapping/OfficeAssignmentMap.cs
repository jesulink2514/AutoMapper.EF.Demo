using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace AutoMapper.EF.Demo.WebApp.Models.Mapping
{
    public class OfficeAssignmentMap : EntityTypeConfiguration<OfficeAssignment>
    {
        public OfficeAssignmentMap()
        {
            // Primary Key
            this.HasKey(t => t.InstructorID);

            // Properties
            this.Property(t => t.InstructorID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Location)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Timestamp)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(8)
                .IsRowVersion();

            // Table & Column Mappings
            this.ToTable("OfficeAssignment");
            this.Property(t => t.InstructorID).HasColumnName("InstructorID");
            this.Property(t => t.Location).HasColumnName("Location");
            this.Property(t => t.Timestamp).HasColumnName("Timestamp");

            // Relationships
            this.HasRequired(t => t.Person)
                .WithOptional(t => t.OfficeAssignment);

        }
    }
}
