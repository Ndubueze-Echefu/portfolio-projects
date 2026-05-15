package source_code;

public class MergeSort
{
    private int[] array;
    private int[] tempMergArr;
    private int length;

    public void sort(int inputArr[])
    {
        this.array = inputArr;
        this.length = inputArr.length;
        this.tempMergArr = new int[length];
        doMergeSort(0, length - 1);
    }

    private void doMergeSort(int lowerIndex, int higherIndex)
    {
        if (lowerIndex < higherIndex)
        {
            int middle = lowerIndex + (higherIndex - lowerIndex) / 2;
            doMergeSort(lowerIndex, middle);
            doMergeSort(middle + 1, higherIndex);
            mergeParts(lowerIndex, middle, higherIndex);
        }
    }

    private void mergeParts(int lowerIndex, int middle, int higherIndex)
    {
        for (int i = lowerIndex; i <= higherIndex; i++)
        {
            tempMergArr[i] = array[i];
            SortMetrics.movements++; // copying to temp array
        }

        int i = lowerIndex;
        int j = middle + 1;
        int k = lowerIndex;

        while (i <= middle && j <= higherIndex)
        {
            SortMetrics.comparisons++; // comparing elements from both halves
            if (tempMergArr[i] <= tempMergArr[j])
            {
                array[k] = tempMergArr[i];
                SortMetrics.movements++; // writing back to main array
                i++;
            }
            else
            {
                array[k] = tempMergArr[j];
                SortMetrics.movements++; // writing back to main array
                j++;
            }
            k++;
        }

        while (i <= middle)
        {
            array[k] = tempMergArr[i];
            SortMetrics.movements++; // writing remaining left half
            k++;
            i++;
        }
    }
}