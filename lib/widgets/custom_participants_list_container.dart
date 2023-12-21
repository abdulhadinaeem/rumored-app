import '../core/constants/imports.dart';

class CustomParticipantsContainerList extends StatelessWidget {
  CustomParticipantsContainerList(
      {super.key, required this.title, required this.url});
  String title, url;
  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(
                top: 3,
                bottom: 3,
              ),
              child: CircleAvatar(
                backgroundColor: AppColors.getReadyContainerColor,
                backgroundImage: AssetImage(
                  url,
                ),
                radius: 17,
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: AppColors.textFiledColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
