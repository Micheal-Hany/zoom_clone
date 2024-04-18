import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/home_meeting_button.dart';
import 'package:zoom_clone/screens/video_call.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              text: 'New Meeting',
              icon: Icons.videocam,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VideoCallScreen(),
                    ));
              },
            ),
            HomeMeetingButton(
              text: 'Join Meeting',
              icon: Icons.add_box_rounded,
              onPressed: () {
                joinMeeting(context, 'existing_meeting_channel');
              },
            ),
            HomeMeetingButton(
              text: 'Schedule',
              icon: Icons.calendar_today,
              onPressed: () {
                // Add function to schedule a meeting
                scheduleMeeting(context);
              },
            ),
            HomeMeetingButton(
              text: 'Sharing Screen',
              icon: Icons.arrow_upward_rounded,
              onPressed: () {
                // Add function to share screen
                shareScreen(context);
              },
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create / join meeting just click',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
        )
      ],
    );
  }

  void joinMeeting(BuildContext context, String channelName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MeetingScreen(
            // channelName: channelName,
            // role: ClientRole.Audience,
            ),
      ),
    );
  }

  void shareScreen(BuildContext context) {
    // Add implementation to share screen
  }

  void scheduleMeeting(BuildContext context) {
    // Add implementation to schedule a meeting
  }

  void startMeeting(BuildContext context, String channelName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MeetingScreen(
            // channelName: channelName,
            // role: ClientRole.Broadcaster,
            ),
      ),
    );
  }
}
