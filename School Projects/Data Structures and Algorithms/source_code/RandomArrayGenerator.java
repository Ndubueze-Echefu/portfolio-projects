package source_code;


import java.util.Random;

public class RandomArrayGenerator
{
    public static int[] generateRandom(int size)
    {
        int[] arr = new int[size];
        Random rand = new Random();
        
        for (int i = 0; i < size; i++)
        {
            arr[i] = rand.nextInt(size * 2); // Random values from 0 to size*2
        }
        
        return arr;
    }
}