mixin Validator {
  String? passWordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    if (value.length < 8) {
      return 'At least 8 characters required';
    } else {
      return null;
    }
  }

  String? emailValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email';
    }
    if (!value.contains('@')) {
      return 'please enter valid email';
    } else {
      return null;
    }
  }

  String? userNameValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Your Name';
    } else {
      return null;
    }
  }

  String? phoneNumberValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter Mobile Number';
    } else {
      return null;
    }
  }

  String? countaryValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please fill the required field';
    } else {
      return null;
    }
  }

  String? pinJoinValidator(value) {
    if (value.isEmpty && value.length < 4) {
      return "Please fill the required field";
    } else {
      return null;
    }
  }
}
