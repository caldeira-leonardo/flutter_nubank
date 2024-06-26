import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/contexts/theme_context.dart';
import '../core/services/auth_service.dart';
import 'app_routing.dart';
import 'modules/modules.dart';
import 'shared/ui/theme/theme.dart';
import 'shared/ui/theme/util.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Modular.get<AuthService>();
    final themeContext = Modular.get<ThemeContext>();

    Modular.setInitialRoute(
      auth.user == null
          ? AuthRouteNames.login.fullpath
          : AppRouteNames.dashboard.fullpath,
    );

    TextTheme textTheme = createTextTheme(context, 'Roboto', 'Roboto');

    MaterialTheme theme = MaterialTheme(textTheme);

    return ListenableBuilder(
      listenable: auth,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: themeContext,
          builder: (_, __) {
            return MaterialApp.router(
              theme: theme.light(),
              darkTheme: theme.dark(),
              themeMode: themeContext.theme,
              routerDelegate: Modular.routerDelegate,
              routeInformationParser: Modular.routeInformationParser,
            );
          },
        );
      },
    );
  }
}
