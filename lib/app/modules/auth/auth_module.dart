import 'package:flutter_modular/flutter_modular.dart';

import 'auth.dart';

class AuthModule extends Module {
  @override
  void routes(r) {
    r.child(AuthRouteNames.login.path, child: (_) => const LoginPage());
    r.child(
      AuthRouteNames.newAccount.path,
      child: (_) => const NewAccount(),
    );
  }
}
