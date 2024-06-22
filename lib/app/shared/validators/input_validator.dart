import 'document_validator_helper.dart';
import 'mask_helper.dart';
import 'postal_code_validator_helper.dart';

class InputValidator {
  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  static String? requiredInt(int? value) {
    if (value == null) {
      return 'Campo obrigatório';
    }
    return null;
  }

  static String? cpfCnpjRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo obrigatório';
    }

    value = MaskHelper.unMaskNumber(value);

    if (value.length <= 11 && !DocumentValidatorHelper.isCPFValid(value)) {
      return 'CPF inválido';
    }

    if (value.length > 11 && !DocumentValidatorHelper.isCNPJValid(value)) {
      return 'CNPJ inválido';
    }

    return null;
  }

  static String? cepRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo obrigatório';
    }

    if (value.length <= 11 &&
        !PostalCodeValidatorHelper.isPostalCodeValid(value)) {
      return 'CEP inválido';
    }

    return null;
  }

  static String? emailIsValid(String? value) {
    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regExp = RegExp(pattern);

    if (value != null && value.isNotEmpty && !regExp.hasMatch(value)) {
      return 'Email inválido';
    }

    return null;
  }
}
