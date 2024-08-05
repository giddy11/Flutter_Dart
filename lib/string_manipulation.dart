//Write a Dart function that takes a sentence as input and reverses the order of the words in the sentence.
void questionOne() {
  String reverseString(String text) {
    String textSplitted = text.split(" ").reversed.toList().join(" ");
    return textSplitted;
  }

  String text = reverseString("Flutter is awesome");
  print("------STRING MANIPULATION-------------");
  print("The reversed string: $text\n");
}

//Create a Dart function that counts the number of times a specific character appears in a given string.
void questionTwo() {
  int countOccurenctOfLetter(String text, String letter) {
    List<String> textSplitted = text.split("");
    int count = 0;

    for (int i = 0; i < text.length; i++) {
      if (letter.toLowerCase() == textSplitted[i].toLowerCase()) {
        count++;
      }
    }

    return count;
  }

  int numberOfOccurence = countOccurenctOfLetter("Flutter   f", "F");
  print("The number of occurence: $numberOfOccurence\n");
}

//Write a Dart function that takes a string as input and returns the string with all vowels removed.
void questionThree() {
  List<String> vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];

  String printNonVowels(String text) {
    List<String> nonVowels = [];
    List<String> textSplitted = text.split("");

    for (int i = 0; i < textSplitted.length; i++) {
      if (!vowels.contains(textSplitted[i])) {
        nonVowels.add(textSplitted[i]);
      }
    }

    return nonVowels.join("");
  }

  String res = printNonVowels("Hello World");
  print("The list of non vowels: $res\n\n");
}
