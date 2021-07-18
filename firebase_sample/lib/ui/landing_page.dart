import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/models/auth.dart';
import 'package:flutter/material.dart';

import 'auth_page.dart';
import 'base_view.dart';
import 'home_page.dart';

class LandingPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, authModel, child) => StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? HomePage()
                : AuthPage(
                    emailController: emailController,
                    passwordController: passwordController,
                    authModel: authModel,
                  );
          }),
    );
  }
}
