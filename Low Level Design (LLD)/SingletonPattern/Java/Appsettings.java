public class Appsettings {

    public static Appsettings instance;
    
    private String dbName;
    private String localPath;

    private Appsettings() {
        dbName = "Appsettings";
        localPath = "/usr/pavan/bin";
    }

    public static synchronized Appsettings getInstance() {
        if (instance == null) {
            instance = new Appsettings();
        } 
        return instance;
    }

    public String getDBPath() {
        return localPath;
    }

    public String getDBName() {
        return dbName;
    }
}