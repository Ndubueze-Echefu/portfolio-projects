package source_code;


public class QuickSort
{
    private int[] array;

    public void sort(int[] inputArr)
    {
        this.array = inputArr;
        doQuickSort(0, inputArr.length - 1);
    }

    private void doQuickSort(int lowerIndex, int higherIndex)
    {
        int i = lowerIndex;
        int j = higherIndex;

        int pivot = array[lowerIndex + (higherIndex - lowerIndex) / 2];
        SortMetrics.movements++; // pivot assignment

        while (i <= j)
        {
            while (array[i] < pivot)
            {
                SortMetrics.comparisons++; // comparison in left scan
                i++;
            }
            SortMetrics.comparisons++; // final failed comparison in left scan

            while (array[j] > pivot)
            {
                SortMetrics.comparisons++; // comparison in right scan
                j--;
            }
            SortMetrics.comparisons++; // final failed comparison in right scan

            if (i <= j)
            {
                exchangeNumbers(i, j);
                i++;
                j--;
            }
        }

        if (lowerIndex < j)
            doQuickSort(lowerIndex, j);
        if (i < higherIndex)
            doQuickSort(i, higherIndex);
    }

    private void exchangeNumbers(int i, int j)
    {
        int temp = array[i];
        SortMetrics.movements++; // temp assignment

        array[i] = array[j];
        SortMetrics.movements++; // swap assignment

        array[j] = temp;
        SortMetrics.movements++; // swap assignment
    }
}