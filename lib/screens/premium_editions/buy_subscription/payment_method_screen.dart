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
                  Center(
                    child: AppImages.paymentScreenImage,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    Strings.selectMethod,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.buySubscriptionSreenTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    Strings.startWithThreeDaysTrail,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.buySubscriptionSreenTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < controller.paymentMethodList.length; i++)
                    CustomPaymentButton(
                      onTap: () {},
                      isPaymentMethot:
                          controller.paymentMethodList[i].isPaymentMethot,
                      image: controller.paymentMethodList[i].image,
                    ),
                  SizedBox(
                    height: context.height * 0.16,
                  ),
                  CustomButton(
                    title: Strings.conTinue,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
