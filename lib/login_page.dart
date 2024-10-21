


import 'package:flutter/material.dart';
import 'package:test_project/rePage.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Text("login"),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: TextFormField(
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
              decoration: InputDecoration(
                hintText: "Enter Pelae Password",
                label: Text("password"),
              ),
            ),
          ),
          SizedBox(height: 50,),
          InkWell(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Repage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              color: Colors.red,
              width: double.infinity,
              height: 50,
              child: const Row(
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
    );
  }


}
