
import java.util.Arrays;
import java.util.Random;
import java.util.stream.IntStream;
import org.knowm.xchart.SwingWrapper;
import org.knowm.xchart.XYChart;
import org.knowm.xchart.XYChartBuilder;

public class BubbleSort {

	public static long bubbleSort(int[] A) {
		long comparisons = 0;
		int n = A.length;

		boolean done;

		do {
			done = true;

			for (int i = 1; i < n; i++) {
				comparisons++;
				if (A[i - 1] > A[i]) {
					int tmp = A[i];
					A[i] = A[i - 1];
					A[i - 1] = tmp;
					done = false;
				}

			}
			n--;
		} while (!done);

		return comparisons;

	}

	public static void test() {
		Random rng = new Random(1234);
		int[] data = IntStream.generate(() -> rng.nextInt(100)).limit(10).toArray();
		System.out.println(Arrays.toString(data));
		bubbleSort(data);
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

			System.out.println("Running bubble sort with " + length + " items...");
			long start = System.nanoTime();
			long comps = bubbleSort(data);
			long end = System.nanoTime();
			long executionTime = end - start;
			n[i] = length;
			comparisons[i] = comps;
			time[i] = executionTime;
			
		}
		
		XYChart chart = new XYChartBuilder().title("Bubble Sort").xAxisTitle("n").build();
		chart.addSeries("Comparisons", n, comparisons);
		double[] nsquared = Arrays.stream(n).boxed().mapToDouble(x -> Math.pow(x, 2)).toArray();
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
        long comps = bubbleSort(data);
        long end = System.nanoTime();
        long executionTime = end - start;

        n[i] = shuffleAmount;
        comparisons[i] = comps;
        time[i] = executionTime;

    }

    XYChart chart = new XYChartBuilder().title("Bubble Sort").xAxisTitle("shuffle %").build();
    chart.addSeries("Comparisons", n, comparisons);
    chart.addSeries("Time", n, time);

    new SwingWrapper(chart).displayChart();
}

}
