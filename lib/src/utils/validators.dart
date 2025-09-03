class Validators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) return 'Email gerekli';
    if (!value.contains('@')) return 'Geçersiz email';
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.length < 6) return 'En az 6 karakter';
    return null;
  }
}
