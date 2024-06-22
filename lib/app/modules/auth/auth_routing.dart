import '../../app_routing.dart';

enum AuthRouteNames { login, newAccount }

extension AuthRouteNamesExtension on AuthRouteNames {
  String get _path {
    switch (this) {
      case AuthRouteNames.login:
        return '/login';
      case AuthRouteNames.newAccount:
        return '/newAccount';
    }
  }

  String get fullpath => AppRouteNames.auth.fullpath + _path;
  String get path => _path;
}
