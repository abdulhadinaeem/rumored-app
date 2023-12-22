import 'package:rumo_red_app/core/constants/imports.dart';

class AfterAdScreen extends StatelessWidget {
  const AfterAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AfterAdController>(
      init: AfterAdController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.clear,
                        ),
                      )),
                  screenHeading(context),
                  customQuestionWidget(
                    "Who is known as the 'God of Thunder' in the Marvel Universe?",
                  ),
                  customQuestionWidget(
                    "Who is known as the 'God of Thunder' in the Marvel Universe?",
                  ),
                  customQuestionWidget(
                    "Who is known as the 'God of Thunder' in the Marvel Universe?",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    title: Strings.viewAll,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget screenHeading(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Image.asset("assets/images/giftbox.png"),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Congratulations!\n",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        const Text(
          "You got 10 free questions of\nMarvel Edition\n",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget customQuestionWidget(String question) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0XFF444444),
            ),
            textAlign: TextAlign.start,
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
