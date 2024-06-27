import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/services/auth_service.dart';
import '../../shared/spaces/spacing.dart';
import '../../shared/widgets/show_and_hide_amount.dart';
import '../../shared/widgets/theme_switcher_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final auth = Modular.get<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const ShowAndHideAmount(),
          Spacing.xs.horizontal,
          const ThemeSwitcherWidget(),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const CircleAvatar(
                child: Text('AA'),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacing.lg.vertical,
            const Text(
              'Conteudo',
              style: TextStyle(color: Colors.amber),
            ),
            const Row(
              children: [SizedBox.shrink()],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const Text('data'),
            const Text('data'),
            const Text('data'),
            IconButton(onPressed: auth.logout, icon: const Icon(Icons.abc)),
          ],
        ),
      ),
    );
  }
}
