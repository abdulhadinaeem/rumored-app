import 'package:rumo_red_app/core/constants/imports.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      init: BottomNavBarController(),
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              ProfileScreen(),
              HomeScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(
            controller: controller,
          ),
        );
      },
    );
  }
}
