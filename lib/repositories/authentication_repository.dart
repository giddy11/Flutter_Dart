import 'package:dart_application_1/models/UserManagement/user.dart';
import 'package:dart_application_1/repositories/user_repository.dart';

class AuthenticationRepository {

  static void changePassword(User user){
    var existingUser = UserRepository.users.firstWhere((u) => u.userId==user.userId);
    existingUser.password = user.password;
  }
}