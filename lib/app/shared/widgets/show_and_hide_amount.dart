import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/contexts/show_and_hide_amount_context.dart';

class ShowAndHideAmount extends StatefulWidget {
  const ShowAndHideAmount({super.key});

  @override
  State<ShowAndHideAmount> createState() => _ShowAndHideAmountState();
}

class _ShowAndHideAmountState extends State<ShowAndHideAmount> {
  final showAndHide = Modular.get<ShowAndHideAmountContext>();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: showAndHide,
      builder: (_, __) {
        return IconButton(
          onPressed: showAndHide.switchShowVisible,
          icon: showAndHide.isVisible
              ? const Icon(Icons.visibility_outlined)
              : const Icon(Icons.visibility_off_outlined),
        );
      },
    );
  }
}
