import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AgoraClient client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "dbbd1eff713b4159b8ae59de994468e6",
          channelName: "test",
          username: "Micheal",
          tempToken:
              "007eJxTYDhTIlwvmdF3QKMuQ5c3SHRayGX5Lzfm6P4zOdJonhvA3qTAkJKUlGKYmpZmbmicZGJoaplkkZhqapmSamlpYmJmkWrWKqSQ1hDIyPCDeQ4LIwMEgvgsDCWpxSUMDAC0tB1S"));

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        AgoraVideoViewer(client: client),
        AgoraVideoButtons(client: client)
      ],
    ));
  }
}


// app id dbbd1eff713b4159b8ae59de994468e6
// Channel Name test
// token 007eJxTYDhTIlwvmdF3QKMuQ5c3SHRayGX5Lzfm6P4zOdJonhvA3qTAkJKUlGKYmpZmbmicZGJoaplkkZhqapmSamlpYmJmkWrWKqSQ1hDIyPCDeQ4LIwMEgvgsDCWpxSUMDAC0tB1S
// link https://console.agora.io/invite?sign=07c8f95cdc91e56de7062d073c2728ad%253A5f3363df3b631264f44332c44b87f482df32ef7097dc5dd182902b63f3660608