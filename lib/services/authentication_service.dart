import 'package:dart_application_1/models/UserManagement/user.dart';
import 'package:dart_application_1/repositories/user_repository.dart';

class AuthenticationService {

  static User signUp(String email, String password){
    var newUser = User();
    newUser.email = email;
    newUser.password = password;

    return newUser;
  }

  // Method to change the user's password
  static User changePassword(User user, String newPassword) {
    user.password = newPassword;
    user.dateUpdated = DateTime.now();
    UserRepository.addUser(user);
    return user;
  }
  
}

