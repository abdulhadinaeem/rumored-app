import 'package:rumo_red_app/core/constants/imports.dart';
import 'package:video_player/video_player.dart';

class AdVideoPlayer extends StatefulWidget {
  AdVideoPlayer({super.key});

  @override
  State<AdVideoPlayer> createState() => _AdVideoPlayerState();
}

class _AdVideoPlayerState extends State<AdVideoPlayer> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    videoPlayerController = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    )..initialize().then((value) {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: videoPlayerController.value.aspectRatio,
              child: VideoPlayer(
                videoPlayerController,
              ),
            )
          : Container(),
    );
  }
}
