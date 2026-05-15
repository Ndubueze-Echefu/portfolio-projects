package source_code;


import java.util.Arrays;

public class Benchmark
{
    public static void main(String[] args)
    {
        int size = 50000;

        // Generate datasets
        int[] asc = AscendingArrayGenerator.generateAscending(size);
        int[] desc = DescendingArrayGenerator.generateDescending(size);
        int[] rand = RandomArrayGenerator.generateRandom(size);

        // Run benchmarks
        runAll("Ascending", asc);
        runAll("Descending", desc);
        runAll("Random", rand);
    }

    public static void runAll(String label, int[] original) 
    {
        System.out.println("\n--- " + label + " Order ---");

        benchmark("Insertion Sort", original, arr -> InsertionSort.intInsertionSort(arr));
        benchmark("Selection Sort", original, arr -> SelectionSort.doSelectionSort(arr));
        benchmark("Quick Sort", original, arr -> new QuickSort().sort(arr));
        benchmark("Merge Sort", original, arr -> new MergeSort().sort(arr));
    }

    public static void benchmark(String name, int[] original, SortFunction sorter) 
    {
        int[] arr = Arrays.copyOf(original, original.length);
        SortMetrics.reset();

        long start = System.nanoTime();
        sorter.sort(arr);
        long end = System.nanoTime();

        double timeMillis = (end - start) / 1_000_000.0;

        System.out.printf("%-15s | Time: %7.2f ms | Comparisons: %8d | Movements: %8d%n",
                name, timeMillis, SortMetrics.comparisons, SortMetrics.movements);
    }

    // Functional interface for sorting
    public interface SortFunction 
    {
        void sort(int[] arr);
    }
}