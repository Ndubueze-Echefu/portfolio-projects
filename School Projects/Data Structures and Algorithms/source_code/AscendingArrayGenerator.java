package source_code;


public class AscendingArrayGenerator
{
    public static int[] generateAscending(int size)
    {
        int[] arr = new int[size];
        for (int i = 0; i < size; i++)
        {
            arr[i] = i + 1; // Filling array with 1, 2, 3, ..., size
        }
        return arr;
    }
}