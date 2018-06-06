using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogImporter.Library
{
    public interface IProgressPresenter
    {
        void Present(string message);
    }

    public static class Progress
    {
        public static IProgressPresenter ProgressPresenter { get; private set; }

        public static void SetProgressPresenter(IProgressPresenter progressPresenter)
        {
            ProgressPresenter = progressPresenter;
        }
    }
}
