import 'package:http/http.dart' as http;


class AbasApiABoAlgeri {


  getRequest() async {
    final response = await http
        .get(Uri.parse('https://coffeshopmustfa.com/auth/login.php'));
  }
  postRequest(String email,String password) async{
    final response = await http
        .post(Uri.parse('https://coffeshopmustfa.com/auth/lgin.php',),
        body: {
          "email": email,
          'password': password
        }
    );
    return response;
  }
}


/// 200 or 201 ok
/// 404 PAGE NOT FOUND
/// 500
/// 405 post or get
