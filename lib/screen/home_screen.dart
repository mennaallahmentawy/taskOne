import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String imagesPath = "assets/images";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text("Welcome",
          style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 24.sp,
          ),
         ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:  MediaQuery.of(context).size.height/20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/logo1.png',
                height: 200.h,
                width: 300.w,
                fit: BoxFit.cover,


              ),
            ),
             SizedBox(
              height:  MediaQuery.of(context).size.height/20,
            ),
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: Colors.pink,
               ),

              //color: Colors.pinkAccent,
              height:200.h,
              width: 300.w,
              child:  Center(
                child: Text("Welcome",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight:FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}