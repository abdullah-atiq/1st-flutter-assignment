import 'dart:io';

void main() {
  stdout.writeln('Enter your Sentence');
  String str1 = stdin.readLineSync()!;
  print(ReversedString(str1));
}

String ReversedString(str2) {
  List<String> characters = str2.split('');
  characters = characters.reversed.toList();
  return characters.join('');
}
