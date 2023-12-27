import 'package:rumo_red_app/core/constants/imports.dart';

class BuySubscriptionScreen extends StatelessWidget {
  const BuySubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuySubscriptionController>(
      init: BuySubscriptionController(),
      builder: (controller) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Scaffold(
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
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: AppImages.buySubscriptionDimondImage,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      Strings.choosePlan,
                      textAlign: TextAlign.center,
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
                    for (int i = 0; i < controller.paymentDataList.length; i++)
                      CustomPaymentButton(
                        price: controller.paymentDataList[i].price,
                        text2: controller.paymentDataList[i].text2,
                        isPaymentMethot:
                            controller.paymentDataList[i].isPaymentMethot,
                        value: controller.paymentDataList[i].value,
                      ),
                    SizedBox(
                      height: context.height * 0.17,
                    ),
                    CustomButton(
                      title: Strings.conTinue,
                      onPressed: () {
                        controller.onPressed(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
