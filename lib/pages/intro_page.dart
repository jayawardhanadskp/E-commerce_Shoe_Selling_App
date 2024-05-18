import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          children: [
            const SizedBox(height: 60,),
            // logo
            Image.asset('assets/logo.png'),
            const SizedBox(height: 60,),
            // title
            const Text('Just Click & Buy', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),

            // sub title
            const Text('Brand new sneakers and custom kicks with premium quality', style: TextStyle(fontSize: 16, color: Colors.grey),),
            const SizedBox(height: 150,),

            // start now button
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15, top: 22, bottom: 22),
                  child: Center(
                    child: Text('Shop Now',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
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
