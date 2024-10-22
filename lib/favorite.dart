


import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
         /// ياخذ كل المساحة من الشاشة
         // Container(
         //   height: 345,
         //   /// اول عنصر داخل الستاك الي هو عبارة عن كولم يكون الابن
         //   /// العنصر الثاني الي بي الوزشن يكون الاب يكون فوق العنصر
         //   child: Stack(
         //     clipBehavior: Clip.none,
         //     children: [
         //       Container(
         //         width: double.infinity,
         //         decoration: BoxDecoration(
         //           color: Colors.blue,
         //           borderRadius: BorderRadius.only(
         //             topRight: Radius.circular(40),
         //             topLeft: Radius.circular(40),
         //           ),
         //         ),
         //
         //       ),
         //       Positioned(
         //         /// تحرك عنصر البوزشن
         //          left: 120,
         //           top: -120,
         //           child: Image.asset(
         //               'img/profile.png',
         //             height: 150,
         //             width: 150,
         //           )
         //       ),
         //     ],
         //   ),
         // ),
          InkWell(
            onTap: (){
              print("fassdfasdf");
            },
            child: Stack(
              children: [
                Image.asset(
                  'img/play.png',
                ),
                Positioned(
                  child: Column(
                    children: [
                      Text(
                        "fadsfdasf",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.red
                        ),
                      ),
                    ],
                  ),
                ),
            ]
            ),
          ),
        ],
      ),
    );
  }
}
