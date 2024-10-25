


import 'package:flutter/material.dart';
import 'package:test_project/homePage.dart';
import 'package:test_project/rePage.dart';
import 'core/api.dart';
class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AbasApiABoAlgeri abasApiABoAlgeri = AbasApiABoAlgeri();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool isLoading = false;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("login"),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: TextFormField(
                controller:email ,
                decoration: InputDecoration(
                  hintText: "Enter Pelae Email",
                  label: Text("Email"),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "Enter Pelae Password",
                  label: Text("password"),
                ),
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap:() async{
                setState(() {
                  isLoading = true;
                });
              final response = await abasApiABoAlgeri
                    .postRequest(
                    email.text,
                    password.text
                );
               setState(() {
                 isLoading = false;
               });
               if(response.statusCode == 200){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>  Homepage()),
                 );
               }
               else {
                print("error");
               }
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                color: Colors.red,
                width: double.infinity,
                height: 50,
                child: isLoading?CircularProgressIndicator():
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
