import 'dart:io';

void section1() {
  // Q1. Define a variable in Dart to hold your name and print it to the console.
  String name = "Gideon Azibaobuom Edoghotu";
  print("My name is $name");
  print("--------------End of Q1---------------------------");

  // Q2. Create a variable to store the current year and another to store the year you were born. Calculate and print your age.
  int currentYear = DateTime.now().year;
  int yearOfBirth = 1929;
  int age = currentYear - yearOfBirth;

  print("I am $age years old.");
  print("----------------End of Q2-------------------------");

  // Q3. Declare a variable to store the list of your WhatsApp Chat. [hint-use list and maps to create the list]
  List<Map<String, String>> whatsappChats = [
    {
      "name": "Barikpe",
      'profilePic': 'djdhhdhsbbhshdhsuyeuue',
      'message': 'Hey, how are you?',
      'date': '2024-07-28'
    },
    {
      "name": "Thelma",
      'profilePic': 'djdhhdhsbbhshdhsuyeuue',
      'message': 'come and get the car',
      'date': '2024-07-28'
    },
    {
      "name": "Mr Paul",
      'profilePic': 'djdhhdhsbbhshdhsuyeuue',
      'message': 'how fa',
      'date': '2024-07-28'
    },
    {
      "name": "Sir Ifeanyi",
      'profilePic': 'djdhhdhsbbhshdhsuyeuue',
      'message': 'send me your account number',
      'date': '2024-07-28'
    },
  ];

  for (Map<String, String> element in whatsappChats) {
    print(element.values);
  }

  print("----------------End of Q3-------------------------");

  // Q4. Write a program that initialises a boolean variable to true if the temperature is greater than 30 degrees, and false otherwise.
  double temp = 32.3;
  bool isHot = temp > 30;

  if (!isHot) isHot = false;

  print("The temperature is: $isHot");

  print("----------------End of Q4-------------------------");

  // Q5. Create a list variable that holds the names of 5 different fruits. Print the list to the console
  List<String> fruits = ["mango", "pear", "Pineapple", "melon", "orange"];
  for (String fruit in fruits) {
    print(fruit);
  }
}

void section2() {
  // Q1. Write a Dart program to add two numbers and print the result.
  int num1 = 4;
  int num2 = 2;
  int res = num1 + num2;

  print("Addition Result: $res");
  print("----------------End of Q1-------------------------");

  // Q2. Create a program that multiplies three numbers and prints the result.
  int num3 = 4;
  int num4 = 5;
  int num5 = 3;
  int res2 = num3 * num4 * num5;

  print("Multiplication Result: $res2");
  print("----------------End of Q2-------------------------");

  // Q3. Find a if a= ,x=3, y=9, b=3
  int x = 3;
  int y = 9;
  int b = 3;
  int numerator = (x * y) + (b * y);
  print("numerator : $numerator");
  int denominator = (5 * x) - (3 * y) % x;
  print("denominator : $denominator");

  double a = numerator / denominator;

  print("the value of a is : $a");
  print("----------------End of Q3-------------------------");
}

void section3() {
  // Q1. Write a Dart program to check if a number is even or odd and print the result.
  int num = 12;

  if (num % 2 == 0) {
    print("$num is an even number");
  } else {
    print("$num is an odd number");
  }

  print("----------------End of Q1-------------------------");

  // Q2. Create a program that checks if a given year is a leap year or not.
  int year = 2003;

  if (year % 4 == 0){
    if (year % 100 == 0){
      if (year % 400 == 0){
        print("$year is a leap year.");
      }
      else{
        print("$year is not a leap year.");
      }
    }
    else{
        print("$year is a leap year.");
    }
  }
  else{
        print("$year is not a leap year.");
  }

  print("----------------End of Q2-------------------------");
}

void section4(){
  // Q1. Write a Dart program that takes a day of the week (e.g., "Monday") and prints whether it's a weekday or weekend.
  String dayOfTheWeek = "monday";

  switch(dayOfTheWeek){
    case "monday":
      print("$dayOfTheWeek is a weekday.");
      break;

    case "tuesday":
      print("$dayOfTheWeek is a weekday.");
      break;

    case "wednesday":
      print("$dayOfTheWeek is a weekday.");
      break;

    case "thursday":
      print("$dayOfTheWeek is a weekday.");
      break;

    case "friday":
      print("$dayOfTheWeek is a weekday.");
      break;

    case "saturday":
      print("$dayOfTheWeek is a weekend.");
      break;

    case "sunday":
      print("$dayOfTheWeek is a weekend.");
      break;
  }

  print("----------------End of Q1-------------------------");


  // Q2. Create a program that takes a number between 1 and 12 and prints the corresponding month name.
  int num = 4;

  switch(num){
    case 1:
      print("$num is january.");
      break;

    case 2:
      print("$num is february.");
      break;

    case 3:
      print("$num is march.");
      break;

    case 4:
      print("$num is april.");
      break;

    case 5:
      print("$num is may.");
      break;

    case 6:
      print("$num is june.");
      break;

    case 7:
      print("$num is july.");
      break;

    case 8:
      print("$num is august.");
      break;

    case 9:
      print("$num is september.");
      break;

    case 10:
      print("$num is october.");
      break;

    case 11:
      print("$num is november.");
      break;

    case 12:
      print("$num is december.");
      break;
  }

  print("----------------End of Q2-------------------------");
}

void section5(){
  // Q1. Write a Dart program that prints the numbers from 1 to 10 using a for loop.
  for (int i = 1; i <= 10; i++) {
    print(i) ;   
  }

  print("----------------End of Q1-------------------------");


  // Q2. Create a Dart program that uses a while loop to print the first 5 positive even numbers.
  int start = 0;
  int count = 0;

  while(start >= 0){
    if(start % 2 == 0){
      print(start);
      count++;
    }
    if(count == 5){
      break;
    }
    start++;
  }

  print("----------------End of Q2-------------------------");

  int numStart = 1;
  int numEnd = 12;

  for (int i = numStart; i <= numEnd; i++) {
    for (int j = 1; j <= 12; j++) {
      int res = i * j;
      print('$i * $j = $res');
    }
    print('');
  }

  print("----------------End of Q3-------------------------");
}

void section6(){
  // Q1. Write a Dart function that takes a list of numbers as an argument and returns the sum of the numbers and the total count. (e.g [2,4,5] , sum 11, count=3)

  int sumAll(List<int> nums){
    int sum = 0;
    for(int i = 0; i < nums.length; i++){
      sum += nums[i];
    }
    return sum;
  }

  List<int> nums = [-4,5,3];
  int res = sumAll(nums);

  print("The sum = $res");

  print("----------------End of Q1-------------------------");



  // Q2. Create a Dart method that takes a string as an argument and prints it in reverse order.

  void reverseText(String text){
      for(int i = text.length - 1; i >= 0; i--){
      stdout.write(text[i]);
    }
    print("");
  }
  String text = "hello";
  reverseText(text);

  print("----------------End of Q2-------------------------");

  // Optional
  // Q3: Create a Dart program that calculates the factorial of any number. (E.g number:3, factorial: 3*2*1 = 6

  int calculateFactorial(int num){
    int prod = 1;

    for(num; num > 0; num--){
      prod *= num;
    }

    return prod;
  }

  int numFact = 6;
  int fact = calculateFactorial(numFact);

  print("The factorial of $numFact is $fact");

  print("----------------End of Q3-------------------------");
}

