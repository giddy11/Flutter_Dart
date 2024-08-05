// ignore: slash_for_doc_comments
/**
 * Write a Dart function that removes all duplicate elements from a list of integers and
  returns the new list.
    - Example Input: [1, 2, 2, 3, 4, 4, 5]
    - Example Output: [1, 2, 3, 4, 5]
 */
void questionOne() {
  List<int> printDuplicates(List<int> nums) {
    List<int> unique = [];

    //iterate through the array to find duplicates
    for (int i = 0; i < nums.length; i++) {
      for (int k = i; k < nums.length; k++) {
        if (!unique.contains(nums[i])) {
          unique.add(nums[i]);
        }
      }
    }
    return unique;
  }

  List<int> uniqueNumbers = printDuplicates([1, 2, 2, 3, 4, 4, 5]);

  print("------LIST MANIPULATION-------------");
  print("List of unique numbers: $uniqueNumbers\n");
}

// ignore: slash_for_doc_comments
/**
 * Create a Dart function that takes a list of integers as input and returns a new list
   containing only the even numbers.
    - Example Input: [1, 2, 3, 4, 5, 6]
    - Example Output: [2, 4, 6]
 */
void questionTwo() {

  List<int> printEvenNumbers(List<int> nums){
    List<int> evenNumbers = [];
    
    for(int i=0; i<nums.length; i++){
      if(nums[i] % 2 == 0){
        evenNumbers.add(nums[i]);
      }
    }

    return evenNumbers;
  }

  List<int> evenNumbers = printEvenNumbers([1, 2, 3, 4, 5, 6]);
  print("List of even numbers: $evenNumbers\n");
}

// ignore: slash_for_doc_comments
/**
 * Write a Dart function that takes two lists of integers as input and returns a new list
   containing only the elements that are present in both lists.
    - Example Input: [1, 2, 3, 4], [3, 4, 5, 6]
    - Example Output: [3, 4]
 */
void questionThree() {
  List<int> printSameNumbers(List<int> nums1, List<int> nums2){
    List<int> sameNumbers = [];
    
    for(int i=0; i<nums1.length; i++){
      if(!nums1.contains(nums2[i])){
        sameNumbers.add(nums1[i]);
      }
    }

    return sameNumbers;
  }

  List<int> commonNumbers = printSameNumbers([1, 2, 3, 4], [3, 4, 5, 6]);
  print("List of common numbers: $commonNumbers\n\n");
}

