
import java.util.Arrays;
import java.util.Random;
import java.util.stream.IntStream;
import org.knowm.xchart.SwingWrapper;
import org.knowm.xchart.XYChart;
import org.knowm.xchart.XYChartBuilder;

public class InsertionSort {

	public static long insertionSort(int[] A) {

		int comparisons = 0;

		int i = 1;

		while (i < A.length) {
			
			int j = i;

			while (j > 0 && A[j - 1] > A[j]) {

				int tmp = A[j];
				A[j] = A[j - 1];
				A[j - 1] = tmp;
				comparisons++;
				j -= 1;
				// we are going to get a N^2 for the big O for insertion sort algo.
			}

			i += 1;

		}

		return comparisons;

	}

	public static void test() {
		Random rng = new Random(1234);
		int[] data = IntStream.generate(() -> rng.nextInt(100)).limit(10).toArray();
		System.out.println(Arrays.toString(data));
		insertionSort(data);
		System.out.println(Arrays.toString(data));
	}

	public static void randomDataComparison() {
		int iterations = 11;

		double[] n = new double[iterations];
		double[] comparisons = new double[iterations];
		double[] time = new double[iterations];

		for (int i = 0; i < iterations; i++) {
			Random rng = new Random(1234);
			long length = i * 1000;

			int[] data = IntStream.generate(() -> rng.nextInt(10000)).limit(length).toArray();

			System.out.println("Running insertion sort with " + length + " items...");
			long start = System.nanoTime();
			long comps = insertionSort(data);
			long end = System.nanoTime();
			long executionTime = end - start;
			
			n[i] = length;
			comparisons[i] = comps;
			time[i] = executionTime;
		}
		double[] nsquared = Arrays.stream(n).boxed().mapToDouble(x -> Math.pow(x, 2)).toArray();
		XYChart chart = new XYChartBuilder().title("Insertion Sort").xAxisTitle("n").build();
		chart.addSeries("Comparisons", n, comparisons);
		chart.addSeries("n^2", n, nsquared);
		new SwingWrapper(chart).displayChart();
		chart.addSeries("Time", n, time);
	}

	public static void main(String[] args) {
		test();
		randomDataComparison();
		sortednessComparison();
	}
	public static void sortednessComparison() {

    int iterations = 11;

    double[] n = new double[iterations];
    double[] comparisons = new double[iterations];
    double[] time = new double[iterations];

    for (int i = 0; i < iterations; i++) {
        Random rng = new Random(1234);
        int shuffleAmount = i * 10;

        int[] data = IntStream.generate(() -> rng.nextInt(10000)).limit(30000).toArray();

        // start with sorted data
        Arrays.sort(data);

        // partially shuffle
        Shuffle.shuffle(data, shuffleAmount, rng);

        System.out.println("Running bubble sort with " + shuffleAmount + "% shuffle...");

        long start = System.nanoTime();
        long comps = insertionSort(data);
        long end = System.nanoTime();
        long executionTime = end - start;

        n[i] = shuffleAmount;
        comparisons[i] = comps;
        time[i] = executionTime;

    }

    XYChart chart = new XYChartBuilder().title("Insertion Sort").xAxisTitle("shuffle %").build();
    chart.addSeries("Comparisons", n, comparisons);
    chart.addSeries("Time", n, time);

    new SwingWrapper(chart).displayChart();
}

}
