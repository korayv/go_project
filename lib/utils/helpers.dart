class Helpers {
  static String capitalize(String word){
    String result = "";
    result = word[0].toUpperCase() + word.substring(1).toLowerCase();
    return result;
  }

  static String titleCase(String data){
    if (data.isEmpty) {
      return "";
    }

    if (data.length <= 1) {
      return data.toUpperCase();
    }

    // Split string into multiple words
    final List<String> words = data.split(' ');

    // Capitalize first letter of each words
    final capitalizedWords = words.map((word) {
      if (word.trim().isNotEmpty) {
        final String firstLetter = word.trim().substring(0, 1).toUpperCase();
        final String remainingLetters = word.trim().substring(1);

        return '$firstLetter$remainingLetters';
      }
      return '';
    });

    // Join/Merge all words back to one String
    return capitalizedWords.join(' ');
  }
}
