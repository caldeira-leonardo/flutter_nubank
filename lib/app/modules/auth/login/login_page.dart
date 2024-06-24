import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/services/auth_service.dart';
import '../../../app_routing.dart';
import '../../../shared/spaces/spacing.dart';
import '../../../shared/ui/widgets/text_input/custom_text_input.dart';
import '../../../shared/validators/validator.dart';
import '../../../shared/widgets/custom_divider.dart';
import '../../../shared/widgets/snackbar.dart';
import '../auth_routing.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final auth = Modular.get<AuthService>();

  final _formKey = GlobalKey<FormState>();
  late dynamic user;

  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  void _login(context) async {
    if (_formKey.currentState!.validate()) {
      final resp = await auth.login(email: email.text, password: password.text);

      log(resp);
      if (resp == 'Success') {
        NavigatorHelper.pushNamed(AppRouteNames.dashboard.fullpath);
      } else {
        Snackbar.show(context: context, content: Text(resp));
      }
    }
  }

  void _googleLogin(context) {
    Snackbar.show(context: context, content: const Text('F Totalis'));
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      CustomTextInput(
                        label: 'Email',
                        controller: email,
                        validator: InputValidator.emailIsValid,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      Spacing.md.vertical,
                      CustomTextInput(
                        label: 'Senha',
                        controller: password,
                        isPassword: true,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      Spacing.md.vertical,
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () => _login(context),
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                  Theme.of(context).colorScheme.surface,
                                ),
                              ),
                              child: Text(
                                'Login',
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
                      Spacing.xs.vertical,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            child: Text(
                              'Esqueci minha senha',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                // fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const CustomDivider(),
                      Spacing.xs.vertical,
                      Text(
                        'Logar com redes sociais',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Spacing.xs.vertical,
                      TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        onPressed: () => _googleLogin(context),
                        label: Text(
                          'Google',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: TextButton(
                      onPressed: () => NavigatorHelper.pushNamed(
                        AuthRouteNames.newAccount.fullpath,
                      ),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      child: Text(
                        'Criar sua conta',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
