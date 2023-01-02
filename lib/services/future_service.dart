import '../helpers/global_var.dart' as global;
import '../models/user.dart';

class VerifyUser {

  late bool isUserVerified;
  late String userVerifiedName;


  //setting global variables
  String getUserVerifiedName() {
    userVerifiedName ??= 'user is not verified';
    return userVerifiedName;
  }

  bool getVerificationResult() => global.isVerified;

  //setting class variables
  String getVerifiedUserName() {
    global.verifiedUserName ??= 'user is not verified';
    return global.verifiedUserName;
  }

  bool getIsUserVerified() => isUserVerified;

  String disposeVerifiedUserName(){
    return global.verifiedUserName = "";
  }

  Future<User> verifyUser(String input) async {

    await Future.delayed(const Duration(seconds: 2));

    print(input);

    if (input == 'Foo') {
      print('Foo is fine - VERIFIED');

      global.verifiedUserName = input;
      global.isVerified = true;

      userVerifiedName = input;
      isUserVerified = true;

      getIsUserVerified();

      print('class variables: $userVerifiedName and $isUserVerified');

      return User(userVerified: true);
    } else {
      global.isVerified = false;
      isUserVerified = false;
      print('$input is wrong - NOT VERIFIED');
      print('class variable: $isUserVerified');
      return User(userVerified: false);
    }
  }
}