public class Meal {
    
    private String mainDish;
    private String sideDish;
    private String coolDrink;
    private String dessert;
    private String pan;

    private Meal(MealBuilder builder) {
        this.mainDish = builder.mainDish;
        this.sideDish = builder.sideDish;
        this.coolDrink = builder.coolDrink;
        this.dessert = builder.dessert;
        this.pan = builder.pan;
    }

    public static synchronized Meal getInstance(MealBuilder builder) {
        return new Meal(builder);
    }

    @Override
    public String toString() {
        return "Meal {" + 
                "Main Dish='" + mainDish + '\'' +
                ", sideDish='" + sideDish + '\'' +
                ", coolDrink='" + coolDrink + '\'' +
                ", dessert='" + dessert + '\'' +
                ", pan='" + pan + '\'' +
                + '}';
    }
}
