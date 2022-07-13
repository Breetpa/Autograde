import java.io.BufferedReader;
import java.io.Console;
import java.io.IOException;
import java.io.InputStreamReader;

public class m {
    public static void main(String[] args) {
        System.out.println("M");
        try {
            Process process = Runtime.getRuntime().exec(new String[] { "java", "test.java" });
            printResults(process);
        } catch (Exception e) {
            System.out.println("Error");
        }
        // printResults(process);
    }

    public static void printResults(Process process) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String line = "";
        while ((line = reader.readLine()) != null) {
            System.out.println(line);
        }
    }
}
