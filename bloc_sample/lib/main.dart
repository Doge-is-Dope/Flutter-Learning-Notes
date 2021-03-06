import 'package:flutter/material.dart';

void main() {
  Stream<int> stream = boatStream();
  stream.listen((receivedData) {
    print("Received boat no. $receivedData");
  });
}

Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print("Sent boat no. $i");
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}
