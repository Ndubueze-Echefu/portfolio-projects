// Import libraries
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

// Class to represent a flight edge
class Flight {
    String destination;
    int cost;
    int time;

    Flight(String destination, int cost, int time) {
        this.destination = destination;
        this.cost = cost;
        this.time = time;
    }
}

// Class to request flight plans
class Request {
    String from;
    String to;
    String criteria; // "C" or "T"

    Request(String from, String to, String criteria) {
        this.from = from;
        this.to = to;
        this.criteria = criteria;
    }
}

// Class to represent adjacency list graph
class FlightGraph {
    Map<String, List<Flight>> adjList;

    FlightGraph() {
        adjList = new HashMap<>();
    }

    void addFlight(String from, String to, int cost, int time) {
        adjList.putIfAbsent(from, new ArrayList<>());
        adjList.get(from).add(new Flight(to, cost, time));
    }

    List<Flight> getFlights(String from) {
        return adjList.getOrDefault(from, new ArrayList<>());
    }
}

// Class to represent a path
class Path {
    List<String> cities;
    int totalCost;
    int totalTime;

    Path() {
        cities = new ArrayList<>();
        totalCost = 0;
        totalTime = 0;
    }

    void addCity(String city, int cost, int time) {
        cities.add(city);
        totalCost += cost;
        totalTime += time;
    }
}

// Class to find paths using iterative backtracking
class PathFinder {
    FlightGraph graph;

    PathFinder(FlightGraph graph) {
        this.graph = graph;
    }

    List<Path> findPaths(String from, String to) {
        List<Path> allPaths = new ArrayList<>();
        Stack<Path> stack = new Stack<>();

        Path initial = new Path();
        initial.addCity(from, 0, 0);
        stack.push(initial);

        while (!stack.isEmpty()) {
            Path currentPath = stack.pop();
            String currentCity = currentPath.cities.get(currentPath.cities.size() - 1);

            if (currentCity.equals(to)) {
                allPaths.add(currentPath);
                continue;
            }

            for (Flight flight : graph.getFlights(currentCity)) {
                if (!currentPath.cities.contains(flight.destination)) {
                    Path newPath = new Path();
                    newPath.cities.addAll(currentPath.cities);
                    newPath.totalCost = currentPath.totalCost;
                    newPath.totalTime = currentPath.totalTime;
                    newPath.addCity(flight.destination, flight.cost, flight.time);
                    stack.push(newPath);
                }
            }
        }
        return allPaths;
    }
}

// HeapSort utility
class HeapSort {
    static void sortByCost(List<Path> paths) {
        int n = paths.size();
        for (int i = n / 2 - 1; i >= 0; i--) heapifyCost(paths, n, i);
        for (int i = n - 1; i >= 0; i--) {
            Path temp = paths.get(0);
            paths.set(0, paths.get(i));
            paths.set(i, temp);
            heapifyCost(paths, i, 0);
        }
    }

    private static void heapifyCost(List<Path> paths, int n, int i) {
        int largest = i, left = 2 * i + 1, right = 2 * i + 2;
        if (left < n && paths.get(left).totalCost > paths.get(largest).totalCost) largest = left;
        if (right < n && paths.get(right).totalCost > paths.get(largest).totalCost) largest = right;
        if (largest != i) {
            Path swap = paths.get(i);
            paths.set(i, paths.get(largest));
            paths.set(largest, swap);
            heapifyCost(paths, n, largest);
        }
    }

    static void sortByTime(List<Path> paths) {
        int n = paths.size();
        for (int i = n / 2 - 1; i >= 0; i--) heapifyTime(paths, n, i);
        for (int i = n - 1; i >= 0; i--) {
            Path temp = paths.get(0);
            paths.set(0, paths.get(i));
            paths.set(i, temp);
            heapifyTime(paths, i, 0);
        }
    }

    private static void heapifyTime(List<Path> paths, int n, int i) {
        int largest = i, left = 2 * i + 1, right = 2 * i + 2;
        if (left < n && paths.get(left).totalTime > paths.get(largest).totalTime) largest = left;
        if (right < n && paths.get(right).totalTime > paths.get(largest).totalTime) largest = right;
        if (largest != i) {
            Path swap = paths.get(i);
            paths.set(i, paths.get(largest));
            paths.set(largest, swap);
            heapifyTime(paths, n, largest);
        }
    }
}

public class FlightPlanner {
    public static void main(String[] args) {
        FlightGraph graph = new FlightGraph();

        // Load flight data
        try (BufferedReader br = new BufferedReader(new FileReader("Flight Data.txt"))) {
            int numFlights = Integer.parseInt(br.readLine().trim());
            for (int i = 0; i < numFlights; i++) {
                String[] parts = br.readLine().split("\\|");
                graph.addFlight(parts[0].trim(), parts[1].trim(),
                        Integer.parseInt(parts[2].trim()), Integer.parseInt(parts[3].trim()));
            }
        } catch (IOException e) {
            System.out.println("Error reading flight data file: " + e.getMessage());
        }

        // Load requested flight plans
        List<Request> requests = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader("Requested Flights.txt"))) {
            int numRequests = Integer.parseInt(br.readLine().trim());
            for (int i = 0; i < numRequests; i++) {
                String[] parts = br.readLine().split("\\|");
                requests.add(new Request(parts[0].trim(), parts[1].trim(), parts[2].trim()));
            }
        } catch (IOException e) {
            System.out.println("Error reading requests file: " + e.getMessage());
        }

       // Create output file
        try (PrintWriter out = new PrintWriter("Output.txt")) {
            PathFinder finder = new PathFinder(graph);
            int flightNumber = 1;
            for (Request r : requests) {
                out.println("Flight " + flightNumber + ": " + r.from + " -> " + r.to +
                            " (" + (r.criteria.equals("C") ? "Cost" : "Time") + ")");
                List<Path> paths = finder.findPaths(r.from, r.to);

                if (paths.isEmpty()) {
                    out.println("Error: No available flight plans.");
                } else {
                    if (r.criteria.equals("C")) HeapSort.sortByCost(paths);
                    else HeapSort.sortByTime(paths);

                    int count = Math.min(3, paths.size());
                    for (int i = 0; i < count; i++) {
                        Path p = paths.get(i);
                        out.print("Path " + (i+1) + ": ");
                        for (String city : p.cities) {
                            out.print(city + (city.equals(p.cities.get(p.cities.size()-1)) ? "" : " -> "));
                        }
                        out.println(". Time: " + p.totalTime + " Cost: " + p.totalCost);
                    }
                }
                flightNumber++;
                out.println(); // blank line between flights
            }
        } catch (IOException e) {
            System.out.println("Error writing output file: " + e.getMessage());
        }
    }
}