import 'package:flutter/material.dart';

import '../../shared/ui/widgets/text_input/custom_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App bar'),
      ),
      body: Column(
        children: [
          CustomTextInput(
            label: 'Email',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomTextInput(
            label: 'Senha',
            controller: password,
            keyboardType: TextInputType.text,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Login'),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.amber)),
          ),
        ],
      ),
    );
  }
}
