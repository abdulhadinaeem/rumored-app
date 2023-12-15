import 'package:rumo_red_app/core/constants/imports.dart';

class CreatQuizGetReadyScreen extends StatelessWidget {
  CreatQuizGetReadyScreen({super.key, required this.isSpiningScreen});
  bool isSpiningScreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Text(
              "Get Ready!",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "The Quiz Will Star Soon",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset("assets/images/get-ready2.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: CustomButton(
              title: "Start",
              onPressed: () {
                Get.to(QuizQuestionScreen(
                  isSpining: isSpiningScreen,
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
