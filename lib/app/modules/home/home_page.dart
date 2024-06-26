import 'package:flutter/material.dart';

import '../../shared/spaces/spacing.dart';
import '../../shared/widgets/show_and_hide_amount.dart';
import '../../shared/widgets/theme_switcher_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      drawer: const Drawer(
        child: Column(
          children: [
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
