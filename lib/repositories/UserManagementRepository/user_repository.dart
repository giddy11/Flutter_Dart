import 'package:dart_application_1/models/UserManagement/user.dart';

class UserRepository {
  static List<User> users = [];

  static void addUser(User user){
    users.add(user);
  }

  static void updateUser(User user){
    var existingUser = users.firstWhere((u) => u.userId==user.userId);
    existingUser.phoneNumber = user.phoneNumber;
    existingUser.password = user.password;
    existingUser.dateUpdated = user.dateUpdated;
  }

  // Method to get a user by ID
  static User? getUserById(int userId) {
    return users.firstWhere((user) => user.userId == userId);
  }
}