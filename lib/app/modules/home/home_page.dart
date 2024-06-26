import 'package:flutter/material.dart';

import '../../shared/spaces/spacing.dart';
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
        title: const Text(''),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            Spacing.lg.vertical,
            const Text(
              'Conteudo',
              style: TextStyle(color: Colors.amber),
            ),
            const Row(
              children: [SizedBox.shrink()],
            ),
            const ThemeSwitcherWidget(),
          ],
        ),
      ),
    );
  }
}
