import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (_) => const LoginPage());
    r.child('/home', child: (_) => const HomePage());
  }
}
