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
            iconTheme: const IconThemeData(color: Colors.white, size: 25),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              Strings.history,
              style: context.textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    for (int i = 0; i <= 9; i++) historyListtile(context),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget historyListtile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          padding: const EdgeInsets.only(left: 12, right: 12),
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
