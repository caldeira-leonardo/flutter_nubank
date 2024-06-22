enum AppRouteNames { home, auth, dashboard }

extension AppRouteNamesExtension on AppRouteNames {
  String get _path {
    switch (this) {
      case AppRouteNames.home:
        return '/';
      case AppRouteNames.auth:
        return '/auth';
      case AppRouteNames.dashboard:
        return '/dash';
    }
  }

  String get fullpath => _path;
  String get path => _path;
}
