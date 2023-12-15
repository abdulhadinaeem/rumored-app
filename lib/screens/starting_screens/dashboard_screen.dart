import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:rumo_red_app/services/widget_controllers/bottom_nav_bar_controller.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (controller) {
          return Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: [HomeScreen(), ProfileScreen()],
            ),
            bottomNavigationBar: BottomNavBar(
              controller: controller,
            ),
          );
        });
  }
}
