import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class BromoVideo extends StatefulWidget {
  const BromoVideo();

  @override
  State<BromoVideo> createState() => _BromoVideoState();
}

class _BromoVideoState extends State<BromoVideo> {
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
    const url = "https://youtu.be/TEXBgNVt19Q";
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
            title: const Text("Video Wisata Bromo"),
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
