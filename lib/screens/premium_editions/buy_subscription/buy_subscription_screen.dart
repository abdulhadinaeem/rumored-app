import 'package:rumo_red_app/core/constants/imports.dart ';
import 'package:rumo_red_app/services/premium_edition_controllers/buy_subscription_controller/buy_subscription_controller.dart';

class BuySubscriptionScreen extends StatelessWidget {
  const BuySubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuySubscriptionController>(
        init: BuySubscriptionController(),
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: SvgPicture.asset("assets/images/dimond1.svg")),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Choose Your Plan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: AppColors.buySubscriptionSreenTextColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Start with 3 days free trail upgrade or\ndowngrade anytime",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.buySubscriptionSreenTextColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomPaymentButton(
                        price: "Free",
                        text2: "Start with 3 days free trail",
                        isPaymentMethot: false,
                        value: 0,
                      ),
                      CustomPaymentButton(
                          price: ".99",
                          text2: "Each Week",
                          isPaymentMethot: false,
                          value: 1),
                      CustomPaymentButton(
                          price: "3.99",
                          text2: "Each Month",
                          isPaymentMethot: false,
                          value: 2),
                      CustomPaymentButton(
                          price: "24.99",
                          text2: "Per Year",
                          isPaymentMethot: false,
                          value: 3),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      CustomButton(
                          title: "Continue",
                          onPressed: () {
                            Get.to(
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.9,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: PaymentMethodScreen(),
                                    ),
                                  );
                                },
                              ).then(
                                (value) => Get.back(),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
