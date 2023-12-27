import 'package:rumo_red_app/core/constants/imports.dart';

class CustomSpinWheel extends StatelessWidget {
  CustomSpinWheel(
      {super.key,
      required this.isDrinkingGame,
      required this.isSpinWheelParticipants,
      required this.isAutoParticipantsDrinking});
  bool isDrinkingGame, isSpinWheelParticipants, isAutoParticipantsDrinking;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpinWheelQuizStartController>(
      init: SpinWheelQuizStartController(
        isDrinkingGame: isDrinkingGame,
        isSpinWheelParticipants: isSpinWheelParticipants,
        isSpining: false,
        isAutoParticipantsDrinking: isAutoParticipantsDrinking,
      ),
      builder: (controller) {
        return Column(
          children: [
            SpinningWheel(
              image: AppImages.spinWheel,
              width: 300,
              height: 300,
              dividers: 12,
              onUpdate: controller.dividerController.add,
              initialSpinAngle: 0.0,
              spinResistance: 0.14,
              canInteractWhileSpinning: false,
              onEnd: controller.dividerController.add,
              // secondaryImage: AppImages.spinWheelShadow,
              // secondaryImageHeight: 280,
              // secondaryImageWidth: 300,
              // secondaryImageTop: 165,
            ),

            Container(
              height: context.height * 0.08,
              // width: context.width * 0.9,
              child: AppImages.spinWheelShadow,
            ),

            // StreamBuilder(
            //   stream: controller.dividerController.stream,
            //   builder: (context, snapshot) =>
            //       snapshot.hasData ? RouletteScore(snapshot.data) : Container(),
            // ),
          ],
        );
      },
    );
  }
}

// class RouletteScore extends StatelessWidget {
//   final int selected;

//   final Map<int, String> labels = {
//     1: "CHALLENGE",
//     2: "TRUTH",
//     3: "SECRET",
//     4: "CHALLENGE",
//     5: "ROAST",
//     6: "FREE PASS",
//     7: "CHALLENGE",
//     8: "TRUTH",
//     9: "SECRET",
//     10: "CHALLENGE",
//     11: "ROAST",
//     12: "FREE PASS",
//   };

//   RouletteScore(this.selected, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Text(
//         '${labels[selected]}',
//         style: const TextStyle(
//             fontStyle: FontStyle.italic, fontSize: 24.0, color: Colors.white),
//       ),
//     );
//   }
// }
