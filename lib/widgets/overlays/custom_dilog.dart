import 'package:rumo_red_app/core/constants/imports.dart';

class CustomShowDialog {
  static shoeCustomDialog(
    BuildContext context, {
    String? image,
    required bool isImage,
    required String title,
    required String buttonTitle1,
    String? buttonTitle2,
    required dynamic Function()? onPressed1,
    dynamic Function()? onPressed2,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          icon: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.clear,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: AppColors.textFiledColor,
          title: Column(
            children: [
              isImage ? Image.asset(image!) : Container(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: isImage
                    ? const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)
                    : const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.pickEditionTextColor),
              ),
            ],
          ),
          content: Container(
            height: context.height * 0.15,
            width: context.width * 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  title: buttonTitle1,
                  elevation: 13,
                  onPressed: onPressed1,
                ),
                const SizedBox(
                  height: 10,
                ),
                isImage
                    ? TextButton(
                        onPressed: () {
                          Get.to(
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    width: context.width * 0.8,
                                    height: context.height * 0.9,
                                    child: const WatchAdScreen(),
                                  ),
                                );
                              },
                            ).then(
                              (value) => Get.back(),
                            ),
                          );
                        },
                        child: const Text(
                          "Watch Add",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    : CustomButton(
                        title: buttonTitle2!,
                        elevation: 13,
                        color: AppColors.textFiledColor,
                        textColor: Colors.black,
                        onPressed: onPressed2,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomSpinWheelDialog {
  static spinWheelDialog(
    BuildContext context, {
    required String image1,
    required String image2,
    required String title,
    required String buttonTitle1,
    required String buttonTitle2,
    required dynamic Function()? onPressed1,
    onPressed2,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            icon: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.clear,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: AppColors.textFiledColor,
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            content: Container(
              height: context.height * 0.16,
              width: context.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: onPressed1,
                    child: Container(
                      width: context.width * 0.3,
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: SvgPicture.asset(
                                image1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text(
                                buttonTitle1,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: onPressed2,
                    child: Container(
                      width: context.width * 0.3,
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: SvgPicture.asset(
                                image2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text(
                                buttonTitle2,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
