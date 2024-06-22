abstract class StringValidator {
  bool isValid(String value);
}

class EmailValidator implements StringValidator {
  @override
  bool isValid(String value) {
    if (value.isEmpty) {
      return false;
    }

    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return false;
    }

    return true;
  }
}

class CEPValidator implements StringValidator {
  @override
  bool isValid(String value) {
    if (value.isEmpty) {
      return false;
    }
    const pattern = r'[0-9]{5}-[0-9]{3}';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return false;
    }

    return true;
  }
}

class PhoneValidator implements StringValidator {
  @override
  bool isValid(String value) {
    if (value.isEmpty) {
      return false;
    }
    const pattern = r'^(?:[0])?[0-9]{11}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return false;
    }

    return true;
  }
}
