using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Library.Progress.SetProgressPresenter(new ConsoleProgressPresenter());

                var logsDir = ConfigurationManager.AppSettings["LogsDir"];

                LogImporter.Library.Services.LogFilesSaver.SaveLogFiles(logsDir);
            }
            catch(Exception e)
            {
                System.Console.WriteLine(e.Message);
            }

            System.Console.WriteLine("Press any key to quit...");
            System.Console.ReadKey();
        }
    }
}
