// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';

class Navigator extends NavigatorObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppBar",
        ),
      ),
      body: Container(),
    );
  }
}
