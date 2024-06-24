import 'package:flutter/material.dart';

class Snackbar {
  static void show({required BuildContext context, required Widget content}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: content));
  }
}
