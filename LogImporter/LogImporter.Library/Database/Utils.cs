using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Library.Database
{
    public static class Extensions
    {
        public static IEnumerable<IEnumerable<TValue>> Chunk<TValue>(this IEnumerable<TValue> values, int chunkSize)
        {
            using (var enumerator = values.GetEnumerator())
            {
                while (enumerator.MoveNext())
                {
                    yield return GetChunk(enumerator, chunkSize);
                }
            }
        }
        
        private static IEnumerable<T> GetChunk<T>(IEnumerator<T> enumerator, int chunkSize)
        {
            do
            {
                yield return enumerator.Current;
            } while (--chunkSize > 0 && enumerator.MoveNext());
        }
    }

    public static class Utils
    {
        private static ServerLogsContainer GetServerLogsContainer()
        {
            var container = new ServerLogsContainer();
            container.Database.CreateIfNotExists();
            return container;
        }

        public static Database.MethodCallLogEntry ConvertMethodCallLogEntry(Models.MethodCallLogEntry entry)
        {
            var methodCallEntry = new Database.MethodCallLogEntry();

            methodCallEntry.LogDateTime = entry.LogDateTime;
            methodCallEntry.ClassName = entry.ClassName;
            methodCallEntry.MethodName = entry.MethodName;
            methodCallEntry.DBName = entry.DBName;
            methodCallEntry.EmployeeCode = entry.EmployeeCode;

            return methodCallEntry;
        }

        public static Database.ProviderCallLogEntry ConvertProviderCallLogEntry(Models.ProviderCallLogEntry entry)
        {
            var providerCall = new Database.ProviderCallLogEntry();

            providerCall.LogDateTime = entry.LogDateTime;
            providerCall.Occurrence = entry.Occurrence;
            providerCall.ClassName = entry.ClassName;
            providerCall.MethodName = entry.MethodName;
            providerCall.ProviderName = entry.ProviderName;
            providerCall.FastMMAllocatedMemory = entry.FastMMAllocatedMemory;
            providerCall.FastMMReservedMemory = entry.FastMMReservedMemory;
            providerCall.WinMMAllocatedMemory = entry.WinMMAllocatedMemory;
            providerCall.ParamsMemory = entry.ParamsMemory;
            providerCall.DurationMilliseconds = entry.DurationMilliseconds;
            providerCall.DBName = entry.DBName;
            providerCall.EmployeeCode = entry.EmployeeCode;
            providerCall.ExceptionMessage = string.IsNullOrEmpty(entry.ExceptionMessage) ? null : entry.ExceptionMessage;

            return providerCall;
        }

        public static void InsertMethodCallLogs(IEnumerable<Database.MethodCallLogEntry> methodCallLogEntries)
        {
            foreach (var chunk in methodCallLogEntries.Chunk(1000))
            {
                using (var container = GetServerLogsContainer())
                {
                    container.MethodCallLogEntrySet.AddRange(chunk);
                    container.SaveChanges();
                }
            }
        }

        public static void InsertProviderCallLogs(IEnumerable<Database.ProviderCallLogEntry> providerCallLogEntries)
        {
            foreach (var chunk in providerCallLogEntries.Chunk(1000))
            {
                using (var container = GetServerLogsContainer())
                {
                    container.ProviderCallLogEntrySet.AddRange(chunk);
                    container.SaveChanges();
                }
            }
        }
    }
}
