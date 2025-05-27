
import java.util.HashMap;

public class HashMapsJava {
    
    public static void main(String[] args) {
        
        HashMap<String, String> dict = new HashMap<>();
        dict.put("name", "John");
        dict.put("location", "USA");
        dict.put("state", "California");
        dict.put("country", "USA1");
        dict.put("pin", "434343434");
        dict.put("district", "USA2");


        System.out.println();
        System.out.println(dict.get("pin"));
        System.out.println();
        for (String item: dict.keySet()) {
            System.out.println("For key -> " + item + " ** for value -> "+dict.get(item));
        }
    }
}
