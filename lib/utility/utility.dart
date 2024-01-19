import 'package:flutter/material.dart';

void navigateTo({required BuildContext context, required Widget widget}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return widget;
  }));
}
