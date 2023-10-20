import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String imagesPath = "assets/images";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight:FontWeight.bold,
          ),
         ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/logo1.png',
                height: 200,
                width: 300,
                fit: BoxFit.cover,


              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: Colors.pink,
               ),

              //color: Colors.pinkAccent,
              height:200,
              width: 300,
              child: const Center(
                child: Text("Welcome",
                  style: TextStyle(
                    fontSize: 24,
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