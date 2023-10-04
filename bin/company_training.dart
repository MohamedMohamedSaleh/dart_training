import 'dart:io';

void main() {
  averageCalculate();
}

getDaysOfWeek() {
  Map<int, String> days = {
    1: "sunday",
    2: "monday",
    3: "tuesday",
    4: "wednesday",
    5: "thursday",
    6: "friday",
    7: "saturday",
  };
  int numDay = int.parse(stdin.readLineSync()!);
  print(days[numDay]);
}

getMonths() {
  Map<int, String> days = {
    1: "january",
    2: "february",
    3: "march",
    4: "april",
    5: "may",
    6: "june",
    7: "july",
    8: "august",
    9: "september",
    10: "october",
    11: "november",
    12: "december",
  };
  int numMonth = int.parse(stdin.readLineSync()!);
  print(days[numMonth]);
}

getSeason() {
  print("Enter any number from 1 to 12");
  int? num = int.parse(stdin.readLineSync()!);
  if (num < 1 || num > 12) {
    print("Enter validat number from 1 to 12");
  } else {
    switch (num) {
      case 12:
      case 1:
      case 2:
        print("winter");
        break;
      case 3:
      case 4:
      case 5:
        print("spring");
        break;
      case 6:
      case 7:
      case 8:
        print("summer");
        break;
      default:
        print("autumn");
    }
  }
}

authentication() {
  String userName = "mohamed";
  String password = "123456";
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your password: ");
  String yourPassword = stdin.readLineSync()!;

  if (name == userName && yourPassword == password) {
    print("Authentication successful");
  } else {
    print("Authentication failed");
  }
}

eventOrOdd1() {
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print("Event");
  } else {
    print("Odd");
  }
}

eventOrOdd2() {
  int num = int.parse(stdin.readLineSync()!);
  if (num & 1 == 0) {
    print("Event");
  } else {
    print("Odd");
  }
}

yearIsLeap() {
  print("Enter the year");
  int year = int.parse(stdin.readLineSync()!);
  if (year % 400 == 0) {
    print("is a leap year");
  } else if (year % 4 == 0 && year % 100 != 0) {
    print("is a leap year");
  } else {
    print("is not a leap year");
  }
}

getScore() {
  print("Enter your score");
  int score = int.parse(stdin.readLineSync()!);
  if (score >= 90) {
    print("A");
  } else if (score >= 80) {
    print("B");
  } else if (score >= 70) {
    print("C");
  } else if (score >= 60) {
    print("D");
  } else {
    print("F");
  }
}

calculator() {
  int num1 = int.parse(stdin.readLineSync()!);
  String operator = stdin.readLineSync()!;
  int num2 = int.parse(stdin.readLineSync()!);

  if (operator == "+") {
    print(num2 + num1);
  } else if (operator == "-") {
    print(num1 - num2);
  } else if (operator == "*") {
    print(num1 * num2);
  } else {
    print(num1 / num2);
  }
}

getAge() {
  print("Enter your Age");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 61) {
    print("Senior");
  } else if (age >= 36) {
    print("adult");
  } else if (age >= 20) {
    print("young adult");
  } else if (age >= 13) {
    print("teenager");
  } else {
    print("child");
  }
}

getTypeNum() {
  int num = int.parse(stdin.readLineSync()!);
  if (num > 0) {
    print("positive");
  } else if (num < 0) {
    print("negative");
  } else {
    print("zero");
  }
}
//////////////////////////////////////////////////////////////////////

sumCalculate() {
  stdout.write("enter start number: ");
  int start = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("enter end number: ");

  int end = int.tryParse(stdin.readLineSync()!) ?? 0;
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  print(sum);
}

factorCalculate() {
  stdout.write("enter start number: ");
  int start = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("enter end number: ");

  int end = int.tryParse(stdin.readLineSync()!) ?? 0;
  int factor = 1;
  for (int i = start; i <= end; i++) {
    factor *= i;
  }
  print(factor);
}

pyramidOfStars() {
  stdout.write("enter the height of pyramid: ");
  int height = int.tryParse(stdin.readLineSync()!) ?? 0;

  for (int i = 1; i <= height * 2; i += 2) {
    stdout.write(" " * (((height * 2) - i) / 2).floor());
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}

reversedNumber() {
  stdout.write("enter the number: ");
  String num = stdin.readLineSync()!;
  int number = int.tryParse(num) ?? 0;
  for (int i = 0; i < num.length; i++) {
    stdout.write(number % 10);
    number ~/= 10;
  }
}

averageCalculate() {
  stdout.write("Enter the length of numbers: ");
  int length = int.tryParse(stdin.readLineSync()!) ?? 0;
  int sum = 0;
  print("Enter the numbers: ");
  for (int i = 0; i < length; i++) {
    int num = int.tryParse(stdin.readLineSync()!) ?? 0;
    sum += num;
  }
  print((sum / length).round());
}
