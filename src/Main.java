import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String sentence = scanner.nextLine();
        String keyword = scanner.nextLine();

        String answer = "단어 '" +
                keyword +
                "' 의 빈도수: " +
                contains(sentence, keyword);

        System.out.println(answer);

        scanner.close();
    }

    public static long contains(String sentence, String keyword) {

        List<String> words = new ArrayList<>(
                Arrays.asList(
                        sentence.toLowerCase().split(" ")
                )
        );

        return words.stream().filter(s -> s.equalsIgnoreCase(keyword)).count();
    }
}