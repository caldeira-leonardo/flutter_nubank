class MaskHelper {
  static String unMaskNumber(String number) {
    return number.replaceAll(RegExp(r'[^\d]'), '');
  }
}
