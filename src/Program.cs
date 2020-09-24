using System;
using System.Text;
using Figgle;

namespace PMTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write(FiggleFonts.Standard.Render(string.Join(" ", args)));
        }
    }
}