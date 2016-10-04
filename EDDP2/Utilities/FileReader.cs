using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace EDDP2.Utilities
{
    public class FileReader
    {
        public String readFile(String path)
        {
            return File.ReadAllText(path);
        }
    }
}