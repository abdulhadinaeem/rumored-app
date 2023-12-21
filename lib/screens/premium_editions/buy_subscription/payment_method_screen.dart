import 'package:rumo_red_app/core/constants/imports.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentMethodScreenController>(
        init: PaymentMethodScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              decoration: const BoxDecoration(
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
                        icon: const Icon(
                          Icons.clear,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Center(
                            child:
                                SvgPicture.asset("assets/images/payment.svg")),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Select a Method",
                          style: TextStyle(
                              fontSize: 20,
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
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.buySubscriptionSreenTextColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomPaymentButton(
                          onTap: () {},
                          isPaymentMethot: true,
                          image: "assets/images/visa.svg",
                        ),
                        CustomPaymentButton(
                          onTap: () {},
                          isPaymentMethot: true,
                          image: "assets/images/mastercard.svg",
                        ),
                        CustomPaymentButton(
                          onTap: () {},
                          isPaymentMethot: true,
                          image: "assets/images/apple-pay.svg",
                        ),
                        CustomPaymentButton(
                          onTap: () {},
                          isPaymentMethot: true,
                          image: "assets/images/google-pay.svg",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        CustomButton(
                          title: "Continue",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
