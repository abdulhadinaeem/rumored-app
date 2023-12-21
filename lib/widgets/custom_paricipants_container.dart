import 'package:rumo_red_app/core/constants/imports.dart';

class CustomParicipantsContainer extends StatelessWidget {
  CustomParicipantsContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.buttonTitle,
      required this.isButtonRequired,
      this.onPressed});
  String title, image, buttonTitle;
  dynamic Function()? onPressed;
  bool isButtonRequired;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Flexible(
      child: Column(
        children: [
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
          const SizedBox(
            height: 18,
          ),
          isButtonRequired
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton(title: buttonTitle, onPressed: onPressed),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget participantsContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          shape: BoxShape.rectangle,
          color: AppColors.textFiledColor,
        ),
        child: customListtile(title, image),
      ),
    );
  }

  Widget customListtile(String title, String url) {
    return Center(
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(url),
            radius: 17,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
