import 'package:rumo_red_app/core/constants/imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: context.height * 0.2,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: AppColors.primaryColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        Strings.userProfile,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: const Center(
                      child: CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        backgroundImage: AppImages.profileImage,
                        radius: 50,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                Strings.aprilJohn,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const Text(
                Strings.johnEmail,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(
                            () => const HistoryScreen(),
                          );
                        },
                        icon: AppImages.profileHistoryImage,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(
                            () => const AnalysisScreen(),
                          );
                        },
                        icon: AppImages.profileAnalysisImage,
                      ),
                    ],
                  ),
                ],
              ),
              for (int i = 0;
                  i < controller.profileScreenListTileData.length;
                  i++)
                profileListTile(
                    controller.profileScreenListTileData[i].title ?? '',
                    controller.profileScreenListTileData[i].listTileTitle ?? '',
                    controller.profileScreenListTileData[i].image ?? ''),
            ],
          ),
        );
      },
    );
  }
}

profileListTile(
  String title,
  String listTiletext,
  String leadingIcon,
) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.profileScreenTitleColor),
          ),
        ),
      ),
      ListTile(
        leading: SvgPicture.asset(
          leadingIcon,
          width: 20,
          // ignore: deprecated_member_use
          color: AppColors.profileScreenListTextColor,
        ),
        title: Text(
          listTiletext,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.profileScreenListTextColor),
        ),
        trailing: AppImages.profileGoNextArrowImage,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Divider(
          thickness: 1,
        ),
      ),
    ],
  );
}
