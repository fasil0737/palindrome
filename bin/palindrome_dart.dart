import 'dart:io';

void main() {
  print("type any word");

  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    if (isPalindrome(input)) {
      print("' $input' is a palindrome. ");
    } else {
      print("' $input' is not a palindrome. ");
    }
  }
}

bool isPalindrome(String input) {
  String cleanedInput = input.replaceAll('', '').toLowerCase();

  int length = cleanedInput.length;

  for (int i = 0; i < length ~/ 2; i++) {
    if (cleanedInput[i] != cleanedInput[length - i - 1]) {
      return false;
    }
  }
  return true;
}
