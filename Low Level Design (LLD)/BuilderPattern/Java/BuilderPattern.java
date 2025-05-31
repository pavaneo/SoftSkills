class BuilderPattern {


    public static void main(String[] args) {
        
        System.out.println("Builder Design Pattern");
        System.out.println("************************");
        System.out.println();

        System.out.println("Full Meal");
        System.out.println("----------------");

        MealBuilder build = new MealBuilder("Rice Sambar", "Soup", "CocaCola")
                                                                                        .addDesert("Jamoon")
                                                                                        .addPan("Chocolate");
        
        Meal meal = Meal.getInstance(build);
        System.out.println(meal.toString());     
        System.out.println();       
        System.out.println("----------------");
        System.out.println("Half Meal");
        System.out.println("----------------");

        MealBuilder build1 = new MealBuilder("Rice Sambar", "Soup", "CocaCola");
        Meal meal1 = Meal.getInstance(build1);
        System.out.println(meal1.toString());
        System.out.println(); 
    }

}