using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LutMemFunc
{
internal class Program {

    static List<KeyValuePair<Tuple<int, int, int>, int>> HashMap = new List<KeyValuePair<Tuple<int, int, int>, int>>();

    private static void FuzzyCompute(int m, int n, bool[,] table)
    {

        bool[] Checked = new bool[Convert.ToInt32(Math.Pow(2, n))];
        int Delta = 0;

        for (int y = 0; y < m; ++y) {

            for (int k = 0; k < Convert.ToInt32(Math.Pow(2, n)); ++k) {
                Checked[k] = false;
            }

            for (int i = 1; i <= n; ++i) {

                int b = Convert.ToInt32(Math.Pow(2, (n - i))); // step

                for (int j = 0; j < Convert.ToInt32(Math.Pow(2, n)); j += b) {

                    bool sw = !Checked[j];

                    for (int k = j + 1; sw && k < j + b; ++k) {
                        sw = (table[k, y] == table[j, y]);
                    }

                    if (sw && !Checked[j]) {

                        for (int k = j; k < j + b; ++k) {
                            Checked[k] = true;
                        }

                        /*
                            int f = b;
                            for (int p = 1; p < n - i; ++p) {
                                f /= 2;
                            }
                        */

                        int f = (j / b) % 2;
                        int s = Convert.ToInt32(Math.Pow(2, (i - 1)) + j / b / 2 - 1);
                        // map[ { y, f }] = b + 1; // state == b && input[i-1] == f  :  buffer[y] = table[j][y];
                        // Console.WriteLine(" {" + s + ", " + f + "," + y + "} ===> " + (table[j, y] ? 1 : 0));
                        HashMap.Add(
                            new KeyValuePair<Tuple<int, int, int>, int>(new Tuple<int, int, int>(s, f, y), (table[j, y] ? 1 : 0)));

                        if (i - y > Delta) {
                            Delta = i - y;
                        }
                    }
                }
                Console.WriteLine("i = " + i + "\t");
            }

            Console.WriteLine("y = " + y + "\n");
        }
        Console.WriteLine("delta : " + Delta);
    }
    static void Main(string[] args)
    {
        int m = 4;
        int n = 5;
        int nToPow2 = Convert.ToInt32(Math.Pow(2, n));

        bool[,] array = new bool[nToPow2, m];

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

        //
        // Fill the array
        //
        input = input.Trim().Replace(" ", "").Replace("\r\n", "");
        // Console.WriteLine(input.Length);
        // Console.WriteLine(input);

        for (int i = 0; i < input.Length / m; i++) {

            for (int j = 0; j < m; j++) {

                if (input[(i * m) + j] == '1') {
                    array[i, j] = true;
                } else if (input[(i * m) + j] == '0') {
                    array[i, j] = false;
                } else {
                    Console.WriteLine("WTF?");
                }
            }
        }

        for (int i = 0; i < nToPow2; i++) {

            Console.Write(i + " - ");

            for (int j = 0; j < m; j++) {

                if (array[i, j]) {
                    Console.Write("1");
                } else {
                    Console.Write("0");
                }
            }
            Console.WriteLine();
        }

        Console.WriteLine();
        Console.WriteLine();

        //
        // Call the fuzzy computer
        //
        FuzzyCompute(m, n, array);

        foreach (var item in HashMap) {
            Console.WriteLine("{ " + item.Key.Item1 + ", " + item.Key.Item2 + ", " + item.Key.Item3 + " } ====> " + item.Value);
        }

        Console.ReadKey();
    }
}
}
