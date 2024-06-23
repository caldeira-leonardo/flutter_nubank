import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/services/auth_service.dart';
import '../../../shared/spaces/spacing.dart';
import '../../../shared/ui/widgets/text_input/custom_text_input.dart';
import '../../../shared/validators/validator.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  final auth = Modular.get<AuthService>();
  final _formKey = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController email;

  @override
  void initState() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    email = TextEditingController();

    super.initState();
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate() &&
        password.text == confirmPassword.text) {
      auth.registrar(email: email.text, password: password.text);

      log('registrado com sucesso');
      // NavigatorHelper.pushNamed(AppRouteNames.dashboard.fullpath);
    } else {
      log('Formulário inválido');
    }
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacing.md.vertical,
                      CustomTextInput(
                        label: 'Email',
                        controller: email,
                        keyboardType: TextInputType.text,
                        validator: InputValidator.emailIsValid,
                      ),
                      Spacing.md.vertical,
                      CustomTextInput(
                        label: 'Password',
                        controller: password,
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) => InputValidator.minimumLenght(
                          minimun: 8,
                          value: value,
                        ),
                      ),
                      Spacing.md.vertical,
                      CustomTextInput(
                        label: 'Confirmar password',
                        controller: confirmPassword,
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) => InputValidator.isStringEqual(
                          value: value,
                          confirmation: password.text,
                        ),
                      ),
                      Spacing.md.vertical,
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: _submit,
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                  Theme.of(context).colorScheme.surface,
                                ),
                              ),
                              child: Text(
                                'Criar conta ',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
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
            ),
          ],
        ),
      ),
    );
  }
}
