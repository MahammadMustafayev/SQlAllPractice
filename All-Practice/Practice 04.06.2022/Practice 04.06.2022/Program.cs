using System;

namespace Practice_04._06._2022
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Factorial(5));
            
        }
        static int Factorial(int c)
        {
            if (c != 0)
            {
                return c * Factorial(c-1);
            }
            else
            {
                return 1;
            }
        }
    }
}
