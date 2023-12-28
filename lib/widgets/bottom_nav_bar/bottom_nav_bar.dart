import 'package:rumo_red_app/core/constants/imports.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.controller});
  final BottomNavBarController controller;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor:
          controller.tabIndex == 1 ? AppColors.secondaryColor : Colors.white,
      unselectedItemColor: controller.tabIndex == 1
          ? AppColors.textFiledColor
          : AppColors.primaryColor,
      currentIndex: controller.tabIndex,
      onTap: controller.bottombarIndex,
      backgroundColor: controller.tabIndex == 1
          ? AppColors.primaryColor
          : AppColors.textFiledColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            decoration: BoxDecoration(
              color: controller.tabIndex == 0
                  ? AppColors.primaryColor
                  : Colors.transparent,
              border: Border.all(
                color: controller.tabIndex == 0
                    ? AppColors.primaryColor
                    : Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Icon(
                Icons.person,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            decoration: BoxDecoration(
              color: controller.tabIndex == 1
                  ? AppColors.textFiledColor
                  : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: controller.tabIndex == 1
                    ? AppColors.textFiledColor
                    : AppColors.primaryColor,
                width: 2,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.home,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
