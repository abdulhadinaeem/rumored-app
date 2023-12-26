import 'package:rumo_red_app/core/constants/imports.dart';

class WatchAdScreen extends StatelessWidget {
  const WatchAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchAdController>(
      init: WatchAdController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.white,
            ),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
