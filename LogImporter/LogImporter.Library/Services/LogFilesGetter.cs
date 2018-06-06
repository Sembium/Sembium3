using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Library.Services
{
    public class LogFilesGetter
    {
        public static IEnumerable<string> GetFileNames(string rootDirectory, string fileNamePrefix)
        {
            var files = System.IO.Directory.GetFiles(rootDirectory, "*.log", System.IO.SearchOption.AllDirectories);

            return
                files.Where(f => 
                    System.IO.Path.GetFileNameWithoutExtension(f).StartsWith(fileNamePrefix, StringComparison.InvariantCultureIgnoreCase)
                );
        }

        public static IEnumerable<string> GetFileLines(string fullFileName)
        {
            Progress.ProgressPresenter.Present(string.Format("Loading {0}...", fullFileName));

            return System.IO.File.ReadAllLines(fullFileName);
        }
    }
}
