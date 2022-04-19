using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace task22
{
    //Declaring public class pascal
    public class pascal
    {
        //Main method
        public static void Main()
        {
            int n , tri = 1, space, i, j;
            Console.WriteLine("Pascal's triangle");
            Console.WriteLine("Enter the size of Pascal triangle");
                n=Convert.ToInt32(Console.ReadLine());

            for (i = 0; i < n; i++)
            {
                for (space = 1; space <= n - i; space++)
                    Console.Write(" ");
                for (j = 0; j <= i; j++)
                {
                    if (j == 0 || i == 0)
                        tri = 1;
                    else
                        tri = tri * (i - j + 1) / j;
                    Console.Write(tri + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
