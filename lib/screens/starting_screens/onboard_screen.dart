import 'package:rumo_red_app/core/constants/imports.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardScreenController>(
      init: OnBoardScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.11,
                    ),
                    AppImages.logo,
                    const SizedBox(
                      height: 12,
                    ),
                    buildMiddleText(),
                  ],
                ),
                CustomButton(
                  title: Strings.conTinue,
                  onPressed: () {
                    Get.off(
                      LoginScreen(),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildMiddleText() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                SvgIcons.checkIcon,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Access to all game modes',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.onBoardingTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              SvgPicture.asset(
                SvgIcons.checkIcon,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Create your own quiz',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.onBoardingTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              SvgPicture.asset(
                SvgIcons.checkIcon,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Invite friends',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.onBoardingTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
