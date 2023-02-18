import 'package:flutter/material.dart';
import 'package:scm_test/screens/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}


