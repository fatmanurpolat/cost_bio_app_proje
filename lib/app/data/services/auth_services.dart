import 'package:cost_boi_proje/app/config/constants/app_api_constants.dart';
import 'package:cost_boi_proje/app/data/services/token_services.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;



class AuthService {
  final TokenService tokenService = Get.put(TokenService());
 final RxBool isLoggedIn = true.obs;


 void onUserLoggedIn() {
    isLoggedIn.value = true;
  }

Future<void> signOut() async {
    try {
      // Token'ı temizle
      tokenService.removeToken();
  Get.offAllNamed(AppRoutes.home);
      // Kullanıcıyı çıkış yapmış olarak işaretle
       isLoggedIn.value = false;
    } catch (e) {
      print('Hata Oluştu: $e');
    }
  }
   Future<bool> login({required String email, required String password}) async {
    try {
      var response = await http.post(
        Uri.parse("${ApiConstants.baseUrl}/user/login"),
        body: convert.jsonEncode({
          'email': email,
          'password': password,
        }),
     
      );

      if (response.statusCode == 200) {
        final body = convert.jsonDecode(response.body);
        print('Response Body: $body');
        // Token'ı sakla
        final token = body['accessToken'];
        if (token != null) {
          tokenService.setToken(token);
          print("token: $token");
        } else {
          print('Hata: Token null olarak alındı.');
        }
        print("token: " + token);
        return true; // Başarılı giriş
      } else {
        final body = convert.jsonDecode(response.body);
        print('Response Status Code: ${response.statusCode}');
        print('Response Body: $body');

        if (body != null && body['error'] != null) {
          // Eğer API cevabında bir hata mesajı varsa
          print('Hata Mesajı: ${body['error']}');
        } else {
          print('Token alınamadı veya bilinmeyen bir hata oluştu.');
        }

        print('Giriş başarısız');
        return false; // Başarısız giriş
      }
    } catch (e) {
      print('Hata Oluştu: $e');
      return false; // İstek hatası
    }
  }

  Future<bool> register({

    required String email,
    required String password,

  }) async {
    try {
      var response = await http.post(
        Uri.parse("${ApiConstants.baseUrl}/user/register"),
        body: convert.jsonEncode({

          'email': email,
          'password': password,
     
        }),
      
      );

      if (response.statusCode == 201) {
        print('Response Status Code: ${response.statusCode}');

        final body = convert.jsonDecode(response.body);
        print('Response Body: $body');
        return true; // Başarılı kayıt
      } else {
        final body = convert.jsonDecode(response.body);
        // Hata mesajını işleyebilir veya döndürebilirsiniz
        print('Response Status Code: ${response.statusCode}');
        print('Response Body: $body');
        print('Kayıt başarısız');

        return false; // Başarısız kayıt
      }
    } catch (e) {
      print(e.toString());
      return false; // İstek hatası
    }
  }
}
