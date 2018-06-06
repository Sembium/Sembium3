using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Library.Services
{
    public static class LogFilesSaver
    {
        public static void SaveLogFiles(string rootDirectory)
        {
            Progress.ProgressPresenter.Present(string.Format("Importing {0} ...", rootDirectory));

            var methodCallLogs = 
                LogFilesGetter.GetFileNames(rootDirectory, "MethodCalls")
                    .SelectMany(f => LogFilesGetter.GetFileLines(f))
                    .Select(x => JsonConverter.JsonToMethodCallLog(x));

            var providerCallLogs = 
                LogFilesGetter.GetFileNames(rootDirectory, "ProviderCalls")
                    .SelectMany(f => LogFilesGetter.GetFileLines(f))
                    .Select(x => JsonConverter.JsonToProviderCallLog(x));

            Database.Utils.InsertMethodCallLogs(methodCallLogs.Select(x => Database.Utils.ConvertMethodCallLogEntry(x)));
            Database.Utils.InsertProviderCallLogs(providerCallLogs.Select(x => Database.Utils.ConvertProviderCallLogEntry(x)));
        }
    }
}
