using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Console
{
    public class ConsoleProgressPresenter : LogImporter.Library.IProgressPresenter
    {
        public void Present(string message)
        {
            System.Console.WriteLine(message);
        }
    }
}
