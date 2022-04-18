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
            //Variable Declaration
            int i, n, j;

            //Getting size of Pascal Triangle from the user
            Console.WriteLine("Enter the size of Pascal triangle");
            n = Convert.ToInt32(Console.ReadLine());    

            //outer for loop 
            for(i=0;i<n;i++)
            {
                //For loop for printing space
                for (j = 1; j <= n - i; j++)
                    Console.Write(" ");
                //This for loop prints * symbol
                for (j = 1; j <= 2 * i - 1; j++)
                    Console.Write("*");
                Console.WriteLine();
            }

        }
    }
}
