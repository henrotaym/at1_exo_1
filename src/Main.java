import java.io.Console;

public class Main {
    public static void main(String[] args) {
        Console console = System.console();
        String age = console.readLine("Quel est votre age? ");
        System.out.print("Vous avez " + age + " ans");
    }
}