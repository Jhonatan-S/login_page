

class Validator {
  Validator._();


  static String? validateName(value) {

    if (value == null || value.isEmpty) {
      return 'Required field';
    } else if (value == null || value.toString().length < 5) {
      return 'Invalid name';
    }
  
    return null;
  }

  static String? validateEmail(value) {
    final conditionEmail = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");

    if (value == null || value.isEmpty) {
      return 'Required field';
    } else if (value == null || !value.contains(conditionEmail)) {
      return 'Invalid Email';
    }
    return null;
  }

  static String? validatePassword(value) {
   

    if (value == null || value.isEmpty) {
      return 'Required field';
    } else if (value == null || value.toString().length < 6) {
      return 'Must have at least 8 characteres';
    }

    return null;
  }

}


class ValidatePasswordSingIn  {
  ValidatePasswordSingIn._();
  static String? validatePassword(value) {
   

    if (value == null || value.isEmpty) {
      return 'Required field';
    } 

    return null;
  }

}