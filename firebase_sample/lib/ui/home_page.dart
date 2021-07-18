import 'package:firebase_sample/models/auth.dart';
import 'package:flutter/material.dart';

import 'base_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, model, __) => Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("Log Out"),
            onPressed: () {
              model.logOut();
            },
          ),
        ),
      ),
    );
  }
}
