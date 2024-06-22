import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigatorHelper {
  static Future<void> pushNamed(String path, {Object? arguments}) async {
    await Modular.to.pushNamed(path, arguments: arguments);
  }

  static Future<void> pushReplacementNamed(
    String path, {
    Object? arguments,
  }) async {
    await Modular.to.pushReplacementNamed(path, arguments: arguments);
  }

  static Future<void> pushNamedAndRemoveUntil(
    String path,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) async {
    await Modular.to
        .pushNamedAndRemoveUntil(path, predicate, arguments: arguments);
  }

  static void pop<T extends Object?>([T? result]) {
    Modular.to.pop(result);
  }

  static Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    String path, {
    TO? result,
    Object? arguments,
  }) async {
    return await Modular.to
        .popAndPushNamed(path, result: result, arguments: arguments);
  }

  static void navigate(String path, {Object? arguments}) {
    Modular.to.navigate(path, arguments: arguments);
  }
}
