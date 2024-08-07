// ignore: slash_for_doc_comments, dangling_library_doc_comments
/**
 * Write a Dart function that takes a map with string keys and integer values as input, and
    returns the key corresponding to the maximum value.
      - Example Input: {"Alice": 90, "Bob": 85, "Charlie": 95}
      - Example Output: "Charlie"
 */

void questionOne(){
  String maxValue(Map<String, int> values){
    int maximumScore = -1;
    String topStudent = "";

    values.forEach((key, value) {

      if(value > maximumScore){
        maximumScore = value;
        topStudent = key;
      }
    });

    return topStudent;
  }

  final students = {
    "Alice": 90,
    "Bob": 85,
    "Charlie": 95,
  };

  print("------USING MAP-------------");
  final studentWithMaxScore = maxValue(students);
  print('The student with the maximum score is $studentWithMaxScore\n');
}


// ignore: slash_for_doc_comments, dangling_library_doc_comments
/**
   * Create a Dart function that takes a list of strings as input and returns a map where
      each string is a key and its length is the corresponding value.
      - Example Input: ["apple", "banana", "cherry"]
      - Example Output: {"apple": 5, "banana": 6, "cherry": 6}
 */

void questionTwo(){
  Map<String, int> newMap(List<String> fruits){
    Map<String, int> newMap = {};

    fruits.forEach((item) {
      final name = item;
      final key = item.length;
      newMap.addAll({name: key});
    });

    return newMap;
  }

  final fruits = ["apple", "banana", "cherry"];
  final newMapOfFruits = newMap(fruits);

  print('The new map: $newMapOfFruits\n');
}

// ignore: slash_for_doc_comments, dangling_library_doc_comments
/**
 * Write a Dart function that takes a map of products and their prices as input, and
    returns a new map with products whose prices are above a certain threshold.
    - Example Input: {"Apple": 1.5, "Banana": 0.5, "Cherry": 2.0}, 1.0
    - Example Output: {"Apple": 1.5, "Cherry": 2.0}
 */

void questionThree(){
  Map<String, double> newMap(Map<String, double> products, double threshold){
    Map<String, double> newMap = {};

    products.forEach((product, price) {
      if(price > threshold){
        newMap.addAll({product: price});
      }
    });

    return newMap;
  }

  final products = {
    "Apple": 1.5,
    "Banana": 0.5,
    "Cherry": 2.0,
  };
  final newMapOfProducts = newMap(products, 1.0);

  print('New products whose prices are above a certain threshold: $newMapOfProducts\n\n');
}

