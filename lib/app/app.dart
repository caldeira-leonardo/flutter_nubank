import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/modules.dart';
import 'shared/ui/widgets/theme/theme.dart';
import 'shared/ui/widgets/theme/util.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AuthRouteNames.login.fullpath);

    TextTheme textTheme = createTextTheme(context, 'Roboto', 'Roboto');

    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp.router(
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.dark,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
