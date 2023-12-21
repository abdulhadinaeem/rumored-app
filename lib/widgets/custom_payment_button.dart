import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/services/widget_controllers/custom_radio_button_controller.dart';

class CustomPaymentButton extends StatelessWidget {
  CustomPaymentButton(
      {super.key,
      this.price,
      this.text2,
      required this.isPaymentMethot,
      this.onTap,
      this.value,
      this.image,
      this.isSelected = false});
  final String? price;
  final String? text2;
  final String? image;
  final bool isPaymentMethot;
  bool isSelected = false;
  int? value;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.width * 0.1,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: isSelected ? Colors.black : const Color(0XFFCAC5C5)),
            borderRadius: BorderRadius.circular(30),
          ),
          child: isPaymentMethot
              ? Center(
                  child: SvgPicture.asset(image!),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CustomRadioButton(
                    value: value!,
                    text: price!,
                    text2: text2!,
                  ),
                ),
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {super.key,
      required this.text,
      required this.text2,
      required this.value});
  int value;
  String text;
  String text2;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomRadioButtonController>(
        init: CustomRadioButtonController(),
        builder: (controller) {
          return GestureDetector(
            onTap: () {
              controller.onChange(value);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RadioMenuButton(
                  value: value,
                  groupValue: controller.selectedValue,
                  onChanged: controller.onChange,
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppColors.buySubscriptionButtonTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFF575151),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
