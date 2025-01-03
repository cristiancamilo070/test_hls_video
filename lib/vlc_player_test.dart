// import 'package:flutter/material.dart';
// import 'package:flutter_vlc_player/flutter_vlc_player.dart';

// class VLCPlayerTest extends StatefulWidget {
//   const VLCPlayerTest({super.key});

//   @override
//   State<VLCPlayerTest> createState() => _VLCPlayerTestState();
// }

// class _VLCPlayerTestState extends State<VLCPlayerTest> {
//   late VlcPlayerController _vlcController;

//   @override
//   void initState() {
//     super.initState();
//     _vlcController = VlcPlayerController.network(
//       'https://live.socialverse.proximaxtest.com/streamerc_app/10000/10000.m3u8',
//       hwAcc: HwAcc.full,
//       autoPlay: true,
//     );
//   }

//   @override
//   void dispose() {
//     _vlcController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('VLC Player Test'),
//       ),
//       body: Center(
//         child: VlcPlayer(
//           controller: _vlcController,
//           aspectRatio: 16 / 9,
//           placeholder: const Center(child: CircularProgressIndicator()),
//         ),
//       ),
//     );
//   }
// }
