import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/services/splash_controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Scaffold(
            // backgroundColor: AppColors.primaryColor,
            body: Center(
              child: SvgPicture.asset(
                "assets/images/logo11.svg",
              ),
            ),
          );
        });
  }
}
