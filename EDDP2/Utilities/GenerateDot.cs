using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;

namespace EDDP2.Utilities
{
    public class GenerateDot
    {
        public void createDot(String content, string rel)
        {
            String path = HttpContext.Current.Request.PhysicalApplicationPath + "images\\";
            String name = path + rel + ".dot";
            System.IO.File.WriteAllText(name,content);
            String proc = "dot -Tpng " +@""""+ path  + rel +@""""+ ".dot " + "-o "+ @""""+path + rel + ".png"+@"""";
            Process cmd = new Process();
            cmd.StartInfo.FileName = "cmd.exe";
            cmd.StartInfo.RedirectStandardInput = true;
            cmd.StartInfo.RedirectStandardOutput = true;
            cmd.StartInfo.CreateNoWindow = true;
            cmd.StartInfo.UseShellExecute = false;
            cmd.Start();
            cmd.StandardInput.WriteLine(proc);
            cmd.StandardInput.Flush();
            cmd.StandardInput.Close();
            cmd.WaitForExit();
            Console.WriteLine(cmd.StandardOutput.ReadToEnd());
        }
    }
}