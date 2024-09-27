import 'package:flutter/material.dart';

import '../welcome Screen/welcome Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // الانتقال إلى صفحة Welcome بعد 3 ثواني
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => welcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageHeight = screenSize.height;
    var imageWidth = screenSize.width;

    return Scaffold(
      body: Center(
        child: Container(
          width: imageWidth,
          height: imageHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/1725983524865-039023de-e8c7-4064-a6a6-47c70b0158dc_1.png'),
              fit: BoxFit.cover, // استخدام cover لجعل الصورة تغطي الشاشة
            ),
          ),
        ),
      ),
    );
  }
}