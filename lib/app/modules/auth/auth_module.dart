import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/services/auth_service.dart';
import 'auth.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<AuthService>(AuthService());
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(AuthRouteNames.login.path, child: (_) => const LoginPage());
    r.child(
      AuthRouteNames.newAccount.path,
      child: (_) => const NewAccount(),
    );
  }
}
