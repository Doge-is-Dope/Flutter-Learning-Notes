import 'package:firebase_sample/enums/app_state.dart';
import 'package:firebase_sample/models/auth.dart';
import 'package:firebase_sample/models/auth_state.dart';
import 'package:flutter/material.dart';

import 'base_view.dart';

class AuthPage extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final AuthModel authModel;

  AuthPage({
    required this.emailController,
    required this.passwordController,
    required this.authModel,
  });

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthStateModel>(builder: (context, authStateModel, __) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Email"),
                  controller: emailController,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                authModel.viewState == ViewState.Busy
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        child: Text(
                            authStateModel.switchAuthenticationText(authModel)),
                        onPressed: () {
                          authStateModel.switchAuthenticationMethod(
                              authModel, emailController, passwordController);
                        }),
                InkWell(
                  onTap: () {
                    authStateModel.switchAuthenticationState(authModel);
                  },
                  child: Text(
                      authStateModel.switchAuthenticationOption(authModel)),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
