import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DanautobaVideo extends StatefulWidget {
  const DanautobaVideo();

  @override
  State<DanautobaVideo> createState() => _DanautobaVideoState();
}

class _DanautobaVideoState extends State<DanautobaVideo> {
  YoutubePlayerController controller;

  void deactive() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    const url = "https://youtu.be/IY2bx0SqL30";
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        hideControls: true,
      ),
    )..addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Video Wisata Wakatobi"),
          ),
          body: ListView(
            children: [
              player,
              const SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: Text(controller.value.isPlaying? "Pause" : "Play" ),
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
