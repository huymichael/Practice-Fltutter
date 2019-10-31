class ValidationMixins {
  String emailValidation(String value) {
    if (!value.contains('@')) {
      return 'Please enter valid email';
    }
    return null;
  }

  String passwordValidation(String value) {
    if (value.length < 4) {
      return 'Password mus be  at least 4 characters';
    }
    return null;
  }
}
