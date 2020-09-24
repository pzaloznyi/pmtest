class Program
{
    static void Main(string[] args)
    {
        if (args.Length > 0)
        {
            var sb = new System.Text.StringBuilder();
            foreach (var arg in args)
                sb.Append(arg);

            System.Console.Write(Figgle.FiggleFonts.Standard.Render(sb.ToString()));
        }
        else
        {
            System.Console.WriteLine("Use at least one string argument");
        }
    }
}
