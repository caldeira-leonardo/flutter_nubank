import 'mask_helper.dart';

class PostalCodeValidatorHelper {
  static bool isPostalCodeValid(String postalCode) {
    postalCode = MaskHelper.unMaskNumber(postalCode);

    if (postalCode.length < 8) return false;

    return true;
  }
}
