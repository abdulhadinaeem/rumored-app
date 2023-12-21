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
                      height: MediaQuery.of(context).size.height * 0.2,
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
                          "User Profile",
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
                          backgroundImage: AssetImage(
                            "assets/images/frame.png",
                          ),
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
                  "April John",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "johndoe@gmail.coms",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(
                          () => const HistoryScreen(),
                        );
                      },
                      icon: Image.asset(
                        "assets/images/history1.png",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(
                          () => const AnalysisScreen(),
                        );
                      },
                      icon: Image.asset(
                        "assets/images/analysis1.png",
                      ),
                    ),
                  ],
                ),
                profileListTile("Edit Profile", "assets/images/edit-pen.svg",
                    "assets/images/next.svg", "Account"),
                profileListTile(
                    "Help & Support",
                    "assets/images/icon-park-solid_help.svg",
                    "assets/images/next.svg",
                    "About"),
                profileListTile(
                  "About Us",
                  "assets/images/about-us.svg",
                  "assets/images/next.svg",
                ),
                profileListTile(
                  "Privacy Policy",
                  "assets/images/privacy.svg",
                  "assets/images/next.svg",
                ),
                profileListTile(
                    "Subscription",
                    "assets/images/subscription.svg",
                    "assets/images/next.svg",
                    "General"),
              ],
            ),
          );
        });
  }
}

profileListTile(String listTiletext, leadingIcon, trallingIcon,
    [String? title]) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title ?? '',
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
        trailing: SvgPicture.asset(trallingIcon),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Divider(
          thickness: 1,
        ),
      )
    ],
  );
}
