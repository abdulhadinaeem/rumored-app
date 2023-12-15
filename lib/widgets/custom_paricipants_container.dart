import 'package:rumo_red_app/core/constants/imports.dart';

class CustomParicipantsContainer extends StatelessWidget {
  CustomParicipantsContainer(
      {super.key, required this.image, required this.title});
  String title, image;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Expanded(
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              color: AppColors.getReadyContainerColor),
          child: ListView(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Center(
                child: Text(
                  "Participants",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textFiledColor),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              for (int i = 0; i < 4; i++) participantsContainer(context),
            ],
          ),
        ),
      ]),
    );
  }

  Widget participantsContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: AppColors.quizQuestionScreenbottonColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          shape: BoxShape.rectangle,
          color: AppColors.getReadyContainerColor,
        ),
        child: customListtile(title, image),
      ),
    );
  }

  Widget customListtile(String title, String url) {
    return Center(
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 25,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: AppColors.textFiledColor,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
