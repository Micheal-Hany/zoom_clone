import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({
    Key? key,
    this.channelName,
    this.role,
  }) : super(key: key);
  final String? channelName;
  final ClientRoleType? role;
  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
