import 'package:http/http.dart' as http;

class CredentialServices {
  void signUpPost(String email, String password) async {
    try {
      var response = await http.post(
          Uri.parse('https://reqres.in/api/register'),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print(response.body.toString());
        print('account created Succesfully');
      } else {
        print("Account is not Created");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void loginPost(String email, String password) async {
    try {
      var response = await http.post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print(response.body.toString());
        print('account created Succesfully');
      } else {
        print("Account is not Created");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
