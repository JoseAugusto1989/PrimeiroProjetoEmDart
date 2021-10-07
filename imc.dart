import 'dart:io';

void main() {
  print("Enter your weight:");
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso!);

  print("Enter your height:");
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  var calc = peso / (altura * altura);

  calcHeightAndWeight(calc);
}

calcHeightAndWeight(calc) {
  if (calc < 18.5) {
    print("Underweight");
  } else if (calc >= 18.5 && calc < 24.9) {
    print("Normal Weight");
  } else if (calc >= 24.9 && calc < 29.9) {
    print("Overweight");
  } else if (calc >= 29.9 && calc < 34.9) {
    print("Grade 1 Obesity");
  } else if (calc >= 34.9 && calc < 39.9) {
    print("Grade 2 Obesity");
  } else {
    print("Grade 3 Obesity");
  }
}
