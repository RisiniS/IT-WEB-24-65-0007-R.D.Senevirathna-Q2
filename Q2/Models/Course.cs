
using System.ComponentModel.DataAnnotations;

namespace Q2_ASPNET_StudentManagement.Models
{
    public class Course
    {
        public int CourseID { get; set; }

        [Required]
        public string CourseName { get; set; }

        public ICollection<Enrollment> Enrollments { get; set; }
    }
}
