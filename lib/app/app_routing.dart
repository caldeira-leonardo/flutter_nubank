import 'package:flutter_modular/flutter_modular.dart';

import 'app.dart';

class AppRouting {
  static List<ModularRoute> get routes {
    return <ModularRoute>[ChildRoute('/', child: (_) => const App())];
  }
}

enum AppRouteNames { main }

extension AppRouteNamesExtension on AppRouteNames {
  String get _path {
    switch (this) {
      case AppRouteNames.main:
        return '/';
    }
  }

  String get fullpath => _path;
}
