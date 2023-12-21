import 'package:rumo_red_app/core/constants/imports.dart';

class EditionsScreen extends StatelessWidget {
  const EditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PickEditionController>(
        init: PickEditionController(context),
        builder: (controller) {
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text("Pick any edition",
                    style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: controller.pickeditionData.length,
                    itemBuilder: (context, index) {
                      var data = controller.pickeditionData[index];
                      return PickEditionsContainer(
                        assetName: data.assetImage,
                        text: data.text,
                        index: index,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
