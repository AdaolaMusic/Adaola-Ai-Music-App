// ignore_for_file: prefer_const_constructors, file_names, annotate_overrides, unused_import

import 'package:flutter/material.dart';

import 'ob1.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ob1()),
            )
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/2,
          child: Image(image: AssetImage("assets/logom3.png"),
        ),
        ),
      ),
    );
  }
}
