import 'package:flutter/material.dart';

import '../../../shared/spaces/spacing.dart';
import '../../../shared/ui/widgets/text_input/custom_text_input.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  late TextEditingController name;
  late TextEditingController password;
  late TextEditingController email;

  @override
  void initState() {
    name = TextEditingController();
    password = TextEditingController();
    email = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar usuário'),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextInput(
                      label: 'Nome',
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Spacing.md.vertical,
                    CustomTextInput(
                      label: 'Email',
                      controller: password,
                      keyboardType: TextInputType.text,
                    ),
                    Spacing.md.vertical,
                    CustomTextInput(
                      label: 'Password',
                      controller: password,
                      keyboardType: TextInputType.text,
                    ),
                    Spacing.md.vertical,
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.surface,
                              ),
                            ),
                            child: Text(
                              'Criar conta ',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
