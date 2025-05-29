public class RemoteControl {
    CommandInterface command;

    public RemoteControl(CommandInterface command) {
        this.command = command;
    }

    void pressButton() {
        this.command.execute();
    }
}
