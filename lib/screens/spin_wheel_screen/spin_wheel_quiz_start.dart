import 'package:rumo_red_app/core/constants/imports.dart';

class SpinWheelQuizStartScreen extends StatelessWidget {
  const SpinWheelQuizStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Center(
            child: Text(
              "Spin The Wheel!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          CustomSpinWheel(),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Get.offAll(DashBoardScreen());
            },
            child: const Text(
              "Exit Quiz",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSpinWheel extends StatelessWidget {
  CustomSpinWheel({super.key});

  StreamController<int> selected = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return SpinningWheel(
      image: Image.asset("assets/images/spin-.png"),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.5,
      dividers: 6,
      onUpdate: selected.add,
      initialSpinAngle: 0.1,
      canInteractWhileSpinning: false,
      spinResistance: 0.5,
      onEnd: selected.add,
    );
  }
}
