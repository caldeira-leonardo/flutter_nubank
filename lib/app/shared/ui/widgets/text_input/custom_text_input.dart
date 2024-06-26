import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInput extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final int? maxLines;
  final bool isPassword;

  const CustomTextInput({
    required this.label,
    super.key,
    this.validator,
    this.controller,
    this.inputFormatter,
    this.onChanged,
    this.focusNode,
    this.maxLines,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      controller: widget.controller,
      obscureText: widget.isPassword,
      maxLines: widget.isPassword ? 1 : widget.maxLines,
      cursorColor: Theme.of(context).colorScheme.primary,
      cursorErrorColor: Colors.red,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
      decoration: _defaultInputDecoration,
      validator: widget.validator,
      inputFormatters: widget.inputFormatter,
      keyboardType: widget.keyboardType,
      cursorWidth: 1,
    );
  }

  InputDecoration get _defaultInputDecoration => InputDecoration(
        fillColor: Colors.white,
        filled: true,
        alignLabelWithHint: true,
        labelText: widget.label,
        contentPadding: const EdgeInsets.all(12),
        floatingLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.normal,
              color: Colors.black54,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      );
}
