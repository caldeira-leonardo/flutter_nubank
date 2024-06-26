import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/contexts/show_and_hide_amount_context.dart';
import '../../../core/services/auth_service.dart';
import 'auth.dart';
import 'forgot_password/forgot_password.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<AuthService>(AuthService());
    i.addInstance<ShowAndHideAmountContext>(ShowAndHideAmountContext());
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(AuthRouteNames.login.path, child: (_) => const LoginPage());
    r.child(
      AuthRouteNames.forgotPassword.path,
      child: (_) => const ForgotPassword(),
    );
    r.child(
      AuthRouteNames.newAccount.path,
      child: (_) => const NewAccount(),
    );
  }
}
