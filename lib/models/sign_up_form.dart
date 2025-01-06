class SignUpForm {
  String firstName = '';
  String lastName = '';
  DateTime? dateOfBirth;
  String gender = '';
  String email = '';
  String password = '';
  String phoneNumber = '';
  String location = '';
  List<String> interests = [];
  String occupation = '';
  String bio = '';

  // Validation methods
  String? validateEmail() {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (email.isEmpty) {
      return 'Email is required';
    }
    if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword() {
    if (password.isEmpty) {
      return 'Password is required';
    }
    if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  String? validateAge() {
    if (dateOfBirth == null) {
      return 'Date of birth is required';
    }
    final age = DateTime.now().difference(dateOfBirth!).inDays ~/ 365;
    if (age < 18) {
      return 'You must be at least 18 years old';
    }
    return null;
  }

  bool isValid() {
    return validateEmail() == null &&
        validatePassword() == null &&
        validateAge() == null &&
        firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        gender.isNotEmpty;
  }
}
