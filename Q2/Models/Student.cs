
using System.ComponentModel.DataAnnotations;

namespace Q2_ASPNET_StudentManagement.Models
{
    public class Student
    {
        public int StudentID { get; set; }

        [Required]
        public string Name { get; set; }

        public string City { get; set; }

        public int Age { get; set; }

        public ICollection<Enrollment> Enrollments { get; set; }
    }
}
