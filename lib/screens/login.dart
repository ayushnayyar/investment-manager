import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/controllers/auth_controller.dart';

class Login extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            controller.signInWithGoogle();
          },
          child: const Text('Google'),
        ),
      ),
    );
  }
}
