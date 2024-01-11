
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class AuthService {
  /// The login function sends a POST request to a login API endpoint with the provided email and
  /// password, and returns true if the login is successful, false if it is unsuccessful, or false if
  /// there is an error in the request.
  /// @param {String} [email] - The email parameter is a required string that represents the user's email
  /// address. It is used to identify the user during the login process.
  /// @param {String} [password] - The password parameter is a required string that represents the user's
  /// password for login authentication.
  /// @returns a `Future<bool>`.
  // Future<bool> signIn({required String email, required String password}) async {
  //   try {
  //     var response = await http.post(
  //       Uri.parse("${ApiConstants.baseUrl}/auth/signIn"),
  //       body: convert.jsonEncode({
  //         'email': email,
  //         'password': password,
  //       }),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         "Access-Control-Allow-Headers": "Access-Control-Allow-Origin: *"
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       final body = convert.jsonDecode(response.body);
  //       print('Response Body: $body');
  //       return true; // Başarılı giriş
  //     } else {
  //       final body = convert.jsonDecode(response.body);
  //       print('Response Status Code: ${response.statusCode}');
  //       print('Response Body: $body');
  //       print('Giriş başarısız');

  //       return false; // Başarısız giriş
  //     }
  //   } catch (e) {
  //     print('Hata Oluştu: $e');
  //     return false; // İstek hatası
  //   }
  // }

  // Future<bool> signUp({
  //   // required String role_id,
  //   required String firstName,
  //   required String lastName,
  //   required String email,
  //   required String password,
  //   required String phoneNumber,
  // }) async {
  //   try {
  //     var response = await http.post(
  //       Uri.parse("${ApiConstants.baseUrl}/auth/signUp"),
  //       body: convert.jsonEncode({
  //         // 'role_id': role_id,
  //         'firstName': firstName,
  //         'lastName': lastName,
  //         'email': email,
  //         'password': password,
  //         'phoneNumber': phoneNumber,

  //         // 'password_confirm': password,
  //       }),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         "Access-Control-Allow-Headers": "Access-Control-Allow-Origin: *"
  //       },
  //     );

  //     if (response.statusCode == 201) {
  //       print('Response Status Code: ${response.statusCode}');

  //       final body = convert.jsonDecode(response.body);
  //       print('Response Body: $body');
  //       return true; // Başarılı kayıt
  //     } else {
  //       final body = convert.jsonDecode(response.body);
  //       print('Response Status Code: ${response.statusCode}');
  //       print('Response Body: $body');
  //       print('Kayıt başarısız');

  //       return false; // Başarısız kayıt
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //     return false; // İstek hatası
  //   }
  // }
}
