import 'package:dart_application_1/models/UserManagement/user.dart';
import 'package:dart_application_1/repositories/user_repository.dart';

class UserService {
  static void updateUser(User user){
    UserRepository.updateUser(user);
  }

  // Method to get a user by ID
  static User? getUserById(int userId) {
    return UserRepository.getUserById(userId);
  }
}