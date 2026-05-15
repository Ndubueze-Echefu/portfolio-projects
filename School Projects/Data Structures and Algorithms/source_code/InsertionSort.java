package source_code;


public class InsertionSort
{
    public static void intInsertionSort(int[] a)
    {
        for (int i = 1; i < a.length; i++)
        {
            int temp = a[i];
            SortMetrics.movements++; // assignment of temp

            int j;
            for (j = i - 1; j >= 0; j--)
            {
                SortMetrics.comparisons++; // comparison in loop condition
                if (temp < a[j])
                {
                    a[j + 1] = a[j];
                    SortMetrics.movements++; // movement during shift
                }
                else
                {
                    break; // no movement, exit early
                }
            }

            a[j + 1] = temp;
            SortMetrics.movements++; // final placement of temp
        }
    }
}