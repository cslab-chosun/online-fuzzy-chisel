using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LutMemFunc2 {
internal class Program {
    public static string Reverse(string text)
    {
        if (text == null)
            return null;

        // this was posted by petebob as well
        char[] array = text.ToCharArray();
        Array.Reverse(array);
        return new String(array);
    }

    static string ReorderLut(string lutString, int n, int m)
    {

        int nToPow2 = Convert.ToInt32(Math.Pow(2, n));
        List<Tuple<int, string>> lutNumbers = new List<Tuple<int, string>>();
        string output = string.Empty;

        for (int i = 0; i < nToPow2; i++) {

            string binary = Convert.ToString(i, 2);
            int initialBinaryLen = binary.Length;

            //
            // Append needed zeros
            //
            for (int j = 0; j < n - initialBinaryLen; j++) {
                binary = "0" + binary;
            }

            lutNumbers.Add(new Tuple<int, string>(Convert.ToInt32(Reverse(binary).ToString(), 2), lutString.Substring(i * 4, m)));
        }

        //
        // Print the list of numbrs number
        //
        foreach (var item in lutNumbers.OrderBy(x => x.Item1)) {
            Console.WriteLine(item);
            output += item.Item2;
        }

        return output;
    }
    static void Main(string[] args)
    {
        int m = 4;
        int n = 5;

        string input = @"
                        0000
                        0000
                        0000
                        0000
                        0000

                        0000
                        0001
                        0010
                        0011
                        0100

                        0101
                        0110
                        0111
                        1000
                        1001

                        1010
                        1001
                        1000
                        0111
                        0110

                        0101
                        0100
                        0011
                        0010
                        0001

                        0000
                        0000
                        0000
                        0000
                        0000

                        0000
                        0000
            ";

        string trimInput = input.Trim().Replace(" ", "").Replace("\t", "").Replace("\n", "").Replace("\r", "");

        Console.WriteLine("Final output: " + ReorderLut(trimInput, n, m));

        Console.ReadKey();
    }
}
}
