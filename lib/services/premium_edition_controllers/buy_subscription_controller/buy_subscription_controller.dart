import 'package:rumo_red_app/core/constants/imports.dart';

class BuySubscriptionController extends GetxController {
  List<BuySubscriptionModel> paymentDataList = [];
  void onPressed(BuildContext context) {
    Get.to(
      showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: context.width * 0.8,
              height: context.height * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const PaymentMethodScreen(),
            ),
          );
        },
      ).then(
        (value) => Get.back(),
      ),
    );
  }

  void customPaymentButtonData() {
    paymentDataList = [
      BuySubscriptionModel(
        price: "Free",
        text2: "Start with 3 days free trail",
        isPaymentMethot: false,
        value: 0,
      ),
      BuySubscriptionModel(
          price: "\$.99", text2: "Each Week", isPaymentMethot: false, value: 1),
      BuySubscriptionModel(
          price: "\$3.99",
          text2: "Each Month",
          isPaymentMethot: false,
          value: 2),
      BuySubscriptionModel(
          price: "\$24.99",
          text2: "Per Year",
          isPaymentMethot: false,
          value: 3),
    ];
  }

  @override
  void onInit() {
    customPaymentButtonData();
    super.onInit();
  }
}
