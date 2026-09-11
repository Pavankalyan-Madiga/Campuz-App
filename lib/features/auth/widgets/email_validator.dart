class EmailValidator {
  static String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your college email';
    }

    final email = value.trim();

    final pattern = RegExp(
      r'^[sSnNoOrR][0-9]+@rguktsklm\.ac\.in$',
    );

    if (!pattern.hasMatch(email)) {
      return 'Enter a valid RGUKT Srikakulam email';
    }

    return null;
  }
}