import 'package:rumo_red_app/core/constants/imports.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      init: HistoryController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              Strings.history,
            ),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  for (int i = 0; i <= 9; i++) historyListtile(context),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget historyListtile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: Container(
        height: context.height * 0.09,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          border: Border.all(width: 1, color: AppColors.textFiledColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              40,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListTile(
            leading: const CircleAvatar(
              radius: 16,
              backgroundImage: AppImages.profileImage,
            ),
            title: const Text(
              Strings.teamQuiz,
            ),
            subtitle: const Text(
              Strings.oneWeek,
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Text(
                Strings.viewParticipants,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.profileScreenListTextColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
