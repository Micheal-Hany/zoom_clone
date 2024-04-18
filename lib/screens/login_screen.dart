import 'package:flutter/material.dart';
import 'package:zoom_clone/resoreces/auth_method.dart';
import 'package:zoom_clone/widgtes/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join a meeting',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.asset('assests/images/onboarding.jpg'),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            buttonName: 'Sign in wit Google',
            onPressed: () async {
              bool res = await _authMethods.sighninWithGoole();
              if (res) {
                Navigator.pushNamed(context, '/home');
              }
            },
          )
        ],
      ),
    );
  }
}
