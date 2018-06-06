using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Library.Models
{
    public class MethodCallLogEntry
    {
        public DateTime LogDateTime { get; set; }
        public string ClassName { get; set; }
        public string MethodName { get; set; }
        public string DBName { get; set; }
        public int EmployeeCode { get; set; }
    }
}
