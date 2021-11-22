String? validateEmail(String value) {
  Pattern pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = new RegExp(pattern.toString());
  if (!regex.hasMatch(value) || value == null)
    return 'Enter a valid email address';
  else
    return null;
}

String? validatePassword(String value) {
  if (value == null || value.isEmpty) {
    return 'Please enter Password';
  } else if (value.length < 8) {
    return 'Length of Password should not be less than 8';
  }
  return null;
}
