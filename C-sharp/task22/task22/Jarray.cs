using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace task22
{
    public class Jarray
    {
        public static void Main()
        {
            int[][] add = new int[2][]
            {
                new int[] { 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 },
                new int[] { 5, 4, 3, 2, 1 }

            };

            int temp=0;
            Console.WriteLine("Unsorted array values");
            for(int i = 0; i < add.Length; i++)
            {
                for(int j = 0; j < add[i].Length; j++)
                {
                    Console.Write(add[i][j] + " ");
                          
                   temp += add[i][j];
                }
                Console.WriteLine("Sum of the given array {0}",temp);
                temp = 0;
                 
            }



        }
    }
}
