// ignore: slash_for_doc_comments, dangling_library_doc_comments
/**
 * Write a Dart function that takes a list of integers as input and returns the sum of all the
    elements in the list.
      ● Example Input: [1, 2, 3, 4, 5]
      ● Example Output: 15
 */

void questionOne() {
  int sumAllNums(List<int> nums) {
    int sum = 0;

    nums.forEach((num) {
      sum += num;
    });

    return sum;
  }

  final nums = [1, 2, 3, 4, 5];
  int sumAll = sumAllNums(nums);

  print("------FUNCTIONS (SYNC AND ASYNC)-------------");
  print("The sum of all numbers = $sumAll\n");
}

// ignore: slash_for_doc_comments, dangling_library_doc_comments
/**
   * Write a Dart function that simulates fetching a list of user names from a server with a 
   * delay of 3 seconds. After the delay, return a list of strings representing the user names.
      ● Example Output: ["Alice", "Bob", "Charlie"]
 */

void questionTwo() async {
  Future<List<String>> getUsernames(List<String> server) async {
    await Future.delayed(Duration(seconds: 3));
    
    List<String> newList = []; // Move the newList inside the function

    for (String username in server) {
      newList.add(username);
    }
    return newList;
  }

  List<String> server = ["Alice", "Bob", "Charlie"];
  List<String> getAllUsernames = await getUsernames(server); // Await the result

  print("Incoming username list = $getAllUsernames\n\n");
}

