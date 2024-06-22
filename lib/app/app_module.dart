import 'package:flutter_modular/flutter_modular.dart';

import 'app_routing.dart';
import 'modules/modules.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module(AppRouteNames.auth.path, module: AuthModule());
    r.child(AppRouteNames.dashboard.path, child: (_) => const HomePage());
  }
}
