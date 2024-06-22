import 'mask_helper.dart';

class DocumentValidatorHelper {
  static bool isCPFValid(String cpf) {
    cpf = MaskHelper.unMaskNumber(cpf);

    if (cpf.length != 11) return false;

    if (RegExp(r'^(\d)\1*$').hasMatch(cpf)) {
      return false;
    }

    int aux = 0;
    for (int i = 0; i < 9; i++) {
      aux += int.parse(cpf[i]) * (10 - i);
    }

    int firstDigit = (aux * 10) % 11;
    if (firstDigit == 10) {
      firstDigit = 0;
    }

    if (firstDigit != int.parse(cpf[9])) {
      return false;
    }

    aux = 0;
    for (int i = 0; i < 10; i++) {
      aux += int.parse(cpf[i]) * (11 - i);
    }
    int secondDigit = (aux * 10) % 11;
    if (secondDigit == 10) {
      secondDigit = 0;
    }

    if (secondDigit != int.parse(cpf[10])) {
      return false;
    }

    return true;
  }

  static bool isCNPJValid(String cnpj) {
    cnpj = MaskHelper.unMaskNumber(cnpj);

    if (cnpj.length != 14) return false;

    if (RegExp(r'^(\d)\1*$').hasMatch(cnpj)) return false;

    int calculateDigit(String cnpj, int length) {
      int sum = 0;
      int weight = length - 7;
      for (int i = 0; i < length; i++) {
        sum += int.parse(cnpj[i]) * weight;
        weight = weight == 2 ? 9 : weight - 1;
      }
      int digit = sum % 11;
      return digit < 2 ? 0 : 11 - digit;
    }

    int firstDigit = calculateDigit(cnpj, 12);
    if (firstDigit != int.parse(cnpj[12])) return false;

    int secondDigit = calculateDigit(cnpj, 13);
    if (secondDigit != int.parse(cnpj[13])) return false;

    return true;
  }
}
