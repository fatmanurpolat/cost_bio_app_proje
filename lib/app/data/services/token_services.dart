import 'package:cost_boi_proje/app/data/models/user_model.dart';
import 'package:get/get.dart';

class TokenService extends GetxService {
  RxString token = ''.obs;
  Rx<User?> currentUser = Rx<User?>(null);

  void setToken(String? newToken) {
    if (newToken != null) {
      token.value = newToken;
    } else {
      print('Hata: Token null olarak ayarlanamaz.');
    }
  }

  void setCurrentUser(User? newUser) {
    currentUser.value = newUser;
  }

  void removeToken() {
    token.value = ''; // Clear the token value
    print('Token removed.');
  }

  String getToken() {
    return token.value;
  }
}
