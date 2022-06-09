class Utils {
  static String getFirstLetters(String fullName) => fullName.isNotEmpty
      ? fullName.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join() : '';
}

