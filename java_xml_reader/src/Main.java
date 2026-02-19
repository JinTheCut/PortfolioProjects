
import java.nio.file.*;
import java.io.*;
import java.util.regex.*;

public class Main {
    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.out.println("Usage: java Main INPUT.xml");
            System.exit(2);
        }
        String xml = Files.readString(Path.of(args[0]));
        // Very simple token count demo (starter only)
        Pattern word = Pattern.compile("[\p{L}]+", Pattern.UNICODE_CHARACTER_CLASS);
        var m = word.matcher(xml);
        int count = 0;
        while (m.find()) count++;
        System.out.println("Characters length: " + xml.length());
        System.out.println("Token-ish count (letters only): " + count);
    }
}
