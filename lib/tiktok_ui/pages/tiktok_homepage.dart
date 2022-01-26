import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class TiktokHomePage extends StatefulWidget {
  @override
  State<TiktokHomePage> createState() => _TiktokHomePageState();
}

class _TiktokHomePageState extends State<TiktokHomePage> {
  VideoPlayerController? _controller;
  List vid = [
    "videos/1.mp4",
    "videos/2.mp4",
    "videos/3.mp4",
    "videos/4.mp4",
    "videos/5.mp4",
    "videos/6.mp4",
    "videos/7.mp4",
    "videos/8.mp4",
    "videos/9.mp4",
  ];
  var currentindex = 0;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(vid[currentindex])
      ..initialize().then((value) {
        setState(() {
          if (currentindex < vid.length - 1) currentindex++;
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (i, e) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: _controller!.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller!.value.aspectRatio,
                          child: VideoPlayer(_controller!),
                        )
                      : Container(),
                ),
                SizedBox(
                  height: 2.h,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _controller!.value.isPlaying
                          ? _controller!.pause()
                          : _controller!.play();
                    });
                  },
                  child: Icon(
                    _controller!.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                )
              ],
            ));
  }
}

Widget pages(Color c) {
  return Container(height: double.infinity, width: double.infinity, color: c);
}
