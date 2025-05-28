public class SmartPhone {

    Mobile mobile;

    public SmartPhone(Mobile mobile) {
        this.mobile = mobile;
    }

    void call() {
        this.mobile.call();
    }

    void sendSMS() {
        this.mobile.sendMessage();
    }

    void browseInternet() {
        this.mobile.browseInternet();
    }
}
