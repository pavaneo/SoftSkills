public class MealBuilder {
    
    public String mainDish;
    public String sideDish;
    public String coolDrink;
    public String dessert;
    public String pan;

    public MealBuilder(String mainDish, String sideDish, String coolDrink) {
        this.mainDish = mainDish;
        this.sideDish = sideDish;
        this.coolDrink = coolDrink;
    }

    public MealBuilder addDesert(String dessert) {
        this.dessert = dessert;
        return this;
    }

    public MealBuilder addPan(String pan) {
        this.pan = pan;
        return this;
    }

    public Meal mealObject(MealBuilder builder) {
        return Meal.getInstance(builder);
    }
}
