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
              title: const Text("History"),
            ),
            body: ListView.builder(itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    for (int i = 0; i <= 5; i++) historyListtile(context),
                  ],
                ),
              );
            }),
          );
        });
  }

  Widget historyListtile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          border: Border.all(width: 1, color: AppColors.textFiledColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              50,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListTile(
            leading: const CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/frame.png'),
            ),
            title: const Text("Team quiz"),
            subtitle: const Text("1 week"),
            trailing: TextButton(
              onPressed: () {},
              child: const Text(
                "View Participants",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.profileScreenListTextColor,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ),
      ),
    );
  }
}