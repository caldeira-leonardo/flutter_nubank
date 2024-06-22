class IntValidator {
  static String? onlyNumbers(String? value) {
    const pattern = r'^[0-9]+$';
    final regExp = RegExp(pattern);

    if (value != null && value.isNotEmpty && !regExp.hasMatch(value)) {
      return 'Digite somente numeros';
    }
    return null;
  }
}
