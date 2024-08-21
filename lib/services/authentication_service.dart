import 'package:dart_application_1/models/UserManagement/user.dart';
import 'package:dart_application_1/repositories/UserManagementRepository/authentication_repository.dart';
import 'package:dart_application_1/repositories/UserManagementRepository/user_repository.dart';

class AuthenticationService {

  static User signUp(String email, String password){
    var newUser = User();
    newUser.email = email;
    newUser.password = password;
    UserRepository.addUser(newUser);
    return newUser;
  }

  // Method to login a user with email and password
  static User? login(String email, String password) {
    var user = AuthenticationRepository.getUserByEmail(email);

    if (user != null && user.password == password) {
      return user;
    } else {
      return null;
    }
  }

  

  // Method to change the user's password
  static User changePassword(User user, String newPassword) {
    user.password = newPassword;
    user.dateUpdated = DateTime.now();
    AuthenticationRepository.changePassword(user);
    return user;
  }
  
}

