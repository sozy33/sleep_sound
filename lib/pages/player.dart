import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/wigtes/text.dart';
import 'package:just_audio/just_audio.dart';

import '../wigtes/icon.dart';

class player extends StatefulWidget {
  const player({super.key});

  @override
  State<player> createState() => _playerState();
}

class _playerState extends State<player> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  void play() async {
    await player.setAsset('sound/2.mp3');
    player.play();
  }

  void pause() async {
    await player.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Ricon(
                  icon: Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                  onTap: () => Get.back(),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 120, right: 100),
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("images/14.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Rtext("Snow White ",
              size: 18, color: Color.fromARGB(193, 145, 145, 146)),
          Rtext("Part 2",
              size: 30, color: Colors.white, fontWeight: FontWeight.bold),
          SizedBox(
            height: 100,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Slider(
              autofocus: true,
              min: 0,
              label: "1",
              focusNode: primaryFocus,
              activeColor: Colors.blue,
              inactiveColor: Color(0xff21283F),
              value: position.inSeconds.toDouble(),
              max: duration.inSeconds.toDouble(),
              onChanged: (value) async {
                setState(() {
                  player.seek(Duration(seconds: value.toInt()));
                  value = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Rtext(
                  "${position.inMinutes}:${position.inSeconds.remainder(50)}",
                  size: 18,
                  color: Color.fromARGB(193, 145, 145, 146),
                ),
                Rtext(
                  "${duration.inMinutes}:${duration.inSeconds.remainder(50)}",
                  size: 18,
                  color: Color.fromARGB(193, 145, 145, 146),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ricon(
                icon: Icons.skip_previous,
                color: Color(0xff21283F),
                size: 50,
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Ricon(
                  icon: isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 50,
                  onTap: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                    isPlaying ? play() : pause();
                  },
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Ricon(
                icon: Icons.skip_next,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
