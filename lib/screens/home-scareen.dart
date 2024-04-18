import 'dart:math';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:zoom_clone/screens/history_meeting_screan.dart';
import 'package:zoom_clone/screens/meeting_screen.dart';
import 'package:zoom_clone/screens/home_meeting_button.dart';
import 'package:zoom_clone/utils/call.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeScareen extends StatefulWidget {
  const HomeScareen({super.key});

  @override
  State<HomeScareen> createState() => _HomeScareenState();
}

class _HomeScareenState extends State<HomeScareen> {
  int _page = 0;
  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const MeetingScreen(),
    const HistoryMeetingScreen(),
  ];
  final _channelController = TextEditingController();
  final bool _valdator = false;
  ClientRoleType role = ClientRoleType.clientRoleBroadcaster;
  @override
  void dispose() {
    _channelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text('Meet & Chat'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChange,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
            ),
            label: 'Meet & Char',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock,
            ),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: pages[_page],
    );
  }

  Future<void> toJoin() async {
    await _handelCameraAndMic(Permission.camera);
    await _handelCameraAndMic(Permission.microphone);
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CallPage(
                  channelName: _channelController.text,
                )));
  }

  Future<void> _handelCameraAndMic(Permission permission) async {
    final status = await permission.request();
    log(status.toString() as num);
  }
}
