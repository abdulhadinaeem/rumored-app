import 'package:rumo_red_app/core/constants/imports.dart';

class BuySubscriptionController extends GetxController {
  void onPressed(BuildContext context) {
    Get.to(
      showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.9,
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
}
