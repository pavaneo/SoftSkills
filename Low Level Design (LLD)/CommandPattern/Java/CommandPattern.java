

/*
 * 
 * Command pattern
 * 
 * The Command Design Pattern is a behavioral pattern that encapsulates a request as an object, 
 * thereby allowing clients to parameterize objects with different requests, queue or log requests, and support undoable operations.
 * 
 * 
 */

 interface CommandInterface {
    public void execute();
 }

 public class CommandPattern {

    public static void main(String[] args) {
        System.out.println();
        System.out.println("Command Design Pattern");

        // Turn on light
        RemoteControl onControl = new RemoteControl(new TurnOnLight(new Light()));

        // Turn off light
        RemoteControl offControl = new RemoteControl(new TurnOffLight(new Light()));

        System.out.println("Executing Turn off light function ");
        offControl.pressButton();


        System.out.println("Executing Turn on light function ");
        onControl.pressButton();
    }
 }