// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:test_borrar_video_player/better_player_test.dart'; //DONT DELETE FOR TESTING
import 'package:test_borrar_video_player/chewie_player_test.dart';
import 'package:test_borrar_video_player/video_player_test.dart';
import 'package:test_borrar_video_player/yoyo_player_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Stream Player',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //TODO TEST HERE
      //home: const BetterPlayerTest(), // NOT WORKING
      //home: const VideoPlayerTest(),// NOT WORKING
      // home: const ChewiePlayerTest(), // NOT WORKING
      home: const YoYoPlayerTest(),
    );
  }
}
