using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Library.Models
{
    public class ProviderCallLogEntry
    {
        public DateTime LogDateTime { get; set; }
        public string Occurrence { get; set; }
        public string ClassName { get; set; }
        public string MethodName { get; set; }
        public string ProviderName { get; set; }
        public long FastMMAllocatedMemory { get; set; }
        public long FastMMReservedMemory { get; set; }
        public long WinMMAllocatedMemory { get; set; }
        public long ParamsMemory { get; set; }
        public long DurationMilliseconds { get; set; }
        public string DBName { get; set; }
        public int EmployeeCode { get; set; }
        public string ExceptionMessage { get; set; }
    }
}
