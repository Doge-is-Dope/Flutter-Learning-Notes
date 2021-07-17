import 'package:flutter/material.dart';
import 'package:firebase_sample/enums/app_state.dart';
import 'package:firebase_sample/models/auth.dart';
import 'package:firebase_sample/models/base.dart';

class AuthStateModel extends BaseModel {
  switchAuthenticationState(AuthModel authModel) {
    authModel.authState == AuthState.SignIn
        ? authModel.setAuthState(AuthState.SignUp)
        : authModel.setAuthState(AuthState.SignIn);
  }

  switchAuthenticationMethod(
    AuthModel authModel,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    authModel.authState == AuthState.SignIn
        ? authModel.signIn(
            emailController.text,
            passwordController.text,
          )
        : authModel.createNewUser(
            emailController.text,
            passwordController.text,
          );
  }

  switchAuthenticationText(AuthModel authModel) {
    return authModel.authState == AuthState.SignIn ? "Sign In" : "Sign Up";
  }

  switchAuthenticationOption(AuthModel authModel) {
    return authModel.authState == AuthState.SignIn
        ? "Create account ??"
        : "Already registered ??";
  }
}
