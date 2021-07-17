import 'package:flutter/material.dart';
import 'package:firebase_sample/enums/app_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _viewState = ViewState.Default;

  ViewState get viewState => _viewState;

  /// Set the [viewState]
  setViewState(ViewState viewState) {
    _viewState = viewState;
    notifyListeners();
  }

  AuthState _authState = AuthState.SignIn;

  AuthState get authState => _authState;

  /// Set the [authState]
  setAuthState(AuthState authState) {
    _authState = authState;
    notifyListeners();
  }
}
