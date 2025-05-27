
// This follows open-closed principle, Payment Interface is open for Online and ATM classes and any new Implementation comes like UPI then its
// Easy to Add one class and implement Interface, (Open for Extension and Closed for modification)

public class PaymentProcessing {
    
    public static void main(String[] args) {
        
        // Online
        Payment paymentOnline = new Online();
        processPayment(paymentOnline);

        // ATM
        Payment paymentAtm = new ATM();
         processPayment(paymentAtm);
    }

    public static void processPayment(Payment payment) {
        payment.pay();
    }
}
