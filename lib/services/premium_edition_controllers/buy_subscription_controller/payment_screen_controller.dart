import 'package:rumo_red_app/core/constants/imports.dart';

class PaymentMethodScreenController extends GetxController {
  List<PaymentMethodModel> paymentMethodList = [];
  void showPaymentMethod() {
    paymentMethodList = [
      PaymentMethodModel(
        isPaymentMethot: true,
        image: "assets/images/visa.svg",
      ),
      PaymentMethodModel(
        isPaymentMethot: true,
        image: "assets/images/mastercard.svg",
      ),
      PaymentMethodModel(
        isPaymentMethot: true,
        image: "assets/images/apple-pay.svg",
      ),
      PaymentMethodModel(
        isPaymentMethot: true,
        image: "assets/images/google-pay.svg",
      ),
    ];
  }

  @override
  void onInit() {
    showPaymentMethod();
    super.onInit();
  }
}
