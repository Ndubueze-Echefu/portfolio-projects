package source_code;


public class DescendingArrayGenerator 
{
    public static int[] generateDescending(int size) 
    {
        int[] arr = new int[size];
        for (int i = 0; i < size; i++) 
        {
            arr[i] = size - i; // Fill the array with descending values
        }
        return arr;
    }
}