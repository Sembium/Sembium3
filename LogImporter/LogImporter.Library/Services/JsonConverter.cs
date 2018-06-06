using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace LogImporter.Library.Services
{
    public static class JsonConverter
    {
        public static Models.MethodCallLogEntry JsonToMethodCallLog(string json)
        {
            var ser = new JavaScriptSerializer();
            var methodCallLog = ser.Deserialize<Models.MethodCallLogEntry>(json);
            methodCallLog.LogDateTime = methodCallLog.LogDateTime.ToUniversalTime();
            return methodCallLog;
        }

        public static Models.ProviderCallLogEntry JsonToProviderCallLog(string json)
        {
            var ser = new JavaScriptSerializer();
            var providerCallLog = ser.Deserialize<Models.ProviderCallLogEntry>(json);
            providerCallLog.LogDateTime = providerCallLog.LogDateTime.ToUniversalTime();
            return providerCallLog;
        }
    }
}
