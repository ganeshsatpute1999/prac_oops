import 'dart:io';

void main() {
  stdout.write("What's your name? ");
  String? name = stdin.readLineSync();

  if (name != null && name.isNotEmpty) {
    print("Hi, $name! What is your age?");
    String? ageInput = stdin.readLineSync();

    if (ageInput != null && int.tryParse(ageInput) != null) {
      int age = int.parse(ageInput);

      int yearsToHundred = 100 - age;
      print("$name, You have $yearsToHundred years to turn 100.");
    } else {
      print("Please enter a valid number for your age.");
    }
  } else {
    print("Please enter a valid name.");
  }
}
