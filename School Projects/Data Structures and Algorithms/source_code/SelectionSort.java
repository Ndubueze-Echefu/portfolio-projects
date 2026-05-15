package source_code;


public class SelectionSort
{
    public static int[] doSelectionSort(int[] arr)
    {
        for (int i = 0; i < arr.length - 1; i++)
        {
            int index = i;

            for (int j = i + 1; j < arr.length; j++)
            {
                SortMetrics.comparisons++; // comparing arr[j] < arr[index]
                if (arr[j] < arr[index])
                {
                    index = j;
                }
            }

            // Swap arr[i] and arr[index]
            int smallerNumber = arr[index];
            SortMetrics.movements++; // assignment of smallerNumber

            arr[index] = arr[i];
            SortMetrics.movements++; // swap assignment

            arr[i] = smallerNumber;
            SortMetrics.movements++; // swap assignment
        }

        return arr;
    }
}