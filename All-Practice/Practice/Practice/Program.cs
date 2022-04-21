using System;
using System.IO;
namespace Practice
{
    class Program
    {
        static void Main(string[] args)
        {

            string path = @"C:\Users\tu7ekdm78\Desktop\qqq\";
            string folderName = Console.ReadLine();
            Directory.CreateDirectory(path + folderName);
            Directory.CreateDirectory(path);
            File.Create(@"C:\Users\tu7ekdm78\Desktop\shemi.txt");
            File.Create(path + "Test1.doc");
            StreamWriter sw = new StreamWriter(path);
                sw.WriteLine("Anar");
            sw.Close();
                sw.WriteLine("Anar");
            sw.Close();
                sw.WriteLine("Anar");
            sw.Close();
            
        }
    }
}
