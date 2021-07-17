import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/enums/app_state.dart';
import 'package:firebase_sample/models/base.dart';

class AuthModel extends BaseModel {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void createNewUser(String email, String password) async {
    setViewState(ViewState.Busy);
    await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    setViewState(ViewState.Default);
  }

  void signIn(String email, String password) async {
    setViewState(ViewState.Busy);
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    setViewState(ViewState.Default);
  }

  void logOut() async {
    setViewState(ViewState.Busy);
    await firebaseAuth.signOut();
    setViewState(ViewState.Default);
  }
}
