public class SingletonPattern {
    
    public static void main(String[] args) {
        System.out.println();
        System.out.println();

        // This will through error since we can't create any instance 
       // Appsettings app = new Appsettings();

        Appsettings settings = Appsettings.getInstance();
        System.out.println("Main Appsetting instance "+ settings.getDBName());
        System.out.println("Main Appsetting instance "+ settings.getDBPath());


        Appsettings settingsClone = Appsettings.getInstance();
        System.out.println("Main Appsetting clone instance "+ settingsClone.getDBName());
        System.out.println("Main Appsetting clone instance "+ settingsClone.getDBPath());

        System.out.println();
        System.out.println();

        if (settings == settingsClone) {
            System.out.println("Instance is same");
        } else {
            System.out.println("Instance is different");
        }

        System.out.println();
        System.out.println();
    }
}
