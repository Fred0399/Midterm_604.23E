import 'dart:async';

abstract class Payment {
  Future<bool> process(double amount);
}

class CreditCard extends Payment {
  String cardNumber;
  String expiryDate;
  String cvv;

  CreditCard({required this.cardNumber, required this.expiryDate, required this.cvv});

  @override
  Future<bool> process(double amount) async {
    print('Processing credit card payment of \$$amount...');
    await Future.delayed(Duration(seconds: 2)); 

    if (isValidCard()) {
      print('Credit card payment successful.');
      return true;
    } else {
      print('Credit card payment failed.');
      return false;
    }
  }

  bool isValidCard() {
    return cardNumber.isNotEmpty && expiryDate.isNotEmpty && cvv.isNotEmpty;
  }
}

class PayPal extends Payment {
  String email;

  PayPal({required this.email});

  @override
  Future<bool> process(double amount) async {
    print('Processing PayPal payment of \$$amount using email $email...');
    await Future.delayed(Duration(seconds: 3)); 

    if (isValidEmail()) {
      print('PayPal payment successful.');
      return true;
    } else {
      print('PayPal payment failed.');
      return false;
    }
  }

  bool isValidEmail() {
    return email.contains('@') && email.contains('.');
  }
}

Future<void> main() async {
  CreditCard creditCard = CreditCard(
    cardNumber: '1234567890123456',
    expiryDate: '12/24',
    cvv: '123',
  );

  PayPal payPal = PayPal(email: 'test@example.com');

  double amount = 100.0;

  bool creditCardPaymentSuccessful = await creditCard.process(amount);
  print('Credit Card Payment Status: $creditCardPaymentSuccessful');

  bool payPalPaymentSuccessful = await payPal.process(amount);
  /// NOTE: couldn't run your code because of typo
  // print('PayPal Payment Status: $PayPalPaymentSuccessful'); // Your version
  print('PayPal Payment Status: $payPalPaymentSuccessful'); // Correct version

}
//resource(https://docs.rapyd.net/en/create-a-payment-in-python.html)
