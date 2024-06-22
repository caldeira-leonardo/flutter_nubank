import 'package:flutter/material.dart';

class CustomDropDownInput<T> extends StatefulWidget {
  final List<T> items;
  final String label;
  final T? value;
  final String? Function(T?)? validator;
  final void Function(T?)? onChanged;
  final String Function(T)? getItemLabel;
  final bool Function(T)? getIsEnabled;

  const CustomDropDownInput({
    required this.items,
    required this.label,
    this.getItemLabel,
    this.getIsEnabled,
    this.value,
    this.onChanged,
    this.validator,
    super.key,
  }) : assert(
          T == String ||
              T == int ||
              getItemLabel != null ||
              getIsEnabled != null,
          'Values must be provided if T is not String',
        );

  @override
  State<CustomDropDownInput<T>> createState() => _CustomDropDownInputState<T>();
}

class _CustomDropDownInputState<T> extends State<CustomDropDownInput<T>> {
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      focusNode: focusNode,
      value: widget.value,
      items: widget.items.map((T item) {
        final itemLabel =
            T == String ? item as String : widget.getItemLabel!(item);

        final itemIsEnabled = T == String ? true : widget.getIsEnabled!(item);
        return DropdownMenuItem<T>(
          value: item,
          enabled: itemIsEnabled,
          child: Opacity(
            opacity: itemIsEnabled ? 1 : 0.25,
            child: Text(itemLabel),
          ),
        );
      }).toList(),
      decoration: _defaultInputDecoration,
      validator: widget.validator,
      onChanged: (value) {
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
    );
  }

  InputDecoration get _defaultInputDecoration => InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: widget.label,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 0,
        ),
        floatingLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.normal,
              color: Colors.blue.shade300,
            ),
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade300,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blue,
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
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      );
}
