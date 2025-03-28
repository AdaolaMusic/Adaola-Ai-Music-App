// ignore_for_file: prefer_const_constructors, file_names, annotate_overrides, unused_import

import 'package:flutter/material.dart';

import 'constants/appcolors.dart';
import 'equilizer.dart';
import 'widgets/app_text 2.dart';


class sp1 extends StatefulWidget {
  const sp1({super.key});

  @override
  State<sp1> createState() => _SplashState();
}

class _SplashState extends State<sp1> {
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EqualizerScreen()),
            )
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SizedBox(
         
          child: AppText(text:"AI prepares to analyze the beat!",
          color: Colors.white,
          fontSize: 18,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w600,
          ),
        ),
        ),
        
      
    );
  }
}

