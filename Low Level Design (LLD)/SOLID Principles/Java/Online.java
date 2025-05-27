public class Online implements Payment {

    @Override
    public void pay() {
        System.out.println("Online payment done");
    }
}
