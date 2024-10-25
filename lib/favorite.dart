


import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
         /// ياخذ كل المساحة من الشاشة
          Container(
            height: 300,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.blue,
                ),
                Positioned(
                  bottom: -60,
                    left: 150,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
