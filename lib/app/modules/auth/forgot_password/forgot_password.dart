import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/services/auth_service.dart';
import '../../../shared/spaces/spacing.dart';
import '../../../shared/ui/widgets/text_input/custom_text_input.dart';
import '../../../shared/validators/validator.dart';
import '../../modules.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _NewAccountState();
}

class _NewAccountState extends State<ForgotPassword> {
  final auth = Modular.get<AuthService>();
  int step = 0;

  late TextEditingController email;

  @override
  void initState() {
    email = TextEditingController();

    super.initState();
  }

  Future<void> _sendEmail() async {
    await auth.forgotPassword(email: email.text);

    _incrementStep();
  }

  void _incrementStep() => setState(() {
        step += 1;
      });
  void _decrementStep() => setState(() {
        if (step > 0) step -= 1;
      });

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resetar senha'),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            Spacing.xxxl.vertical,
            Stepper(
              stepIconBuilder: (step, __) => _stepperIconSelect(step),
              stepIconHeight: 40,
              stepIconWidth: 40,
              currentStep: step,
              onStepCancel: _decrementStep,
              onStepContinue: _onTapContinue,
              steps: [
                Step(
                  title: const Text('Email'),
                  content: CustomTextInput(
                    label: 'Email',
                    controller: email,
                    keyboardType: TextInputType.text,
                    validator: InputValidator.emailIsValid,
                  ),
                ),
                Step(
                  title: const Text('Codigo de confirmação'),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Em instantes você receberá um email para redefinir sua senha',
                      ),
                      Spacing.sm.vertical,
                      const Text('Siga o passo a passo para altera-la'),
                      Spacing.lg.vertical,
                      const Text(
                        'Clique em CONTINUE para voltar a tela de login',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _stepperIconSelect(int step) {
    switch (step) {
      case 0:
        return const Icon(Icons.mail);
      case 1:
        return const Icon(Icons.done);
      default:
        return const SizedBox.shrink();
    }
  }

  void _onTapContinue() {
    switch (step) {
      case 0:
        {
          _sendEmail();
          break;
        }
      case 1:
        {
          NavigatorHelper.pushNamed(AuthRouteNames.login.fullpath);
          break;
        }
      default:
        {
          const SizedBox.shrink();
          break;
        }
    }
  }
}
