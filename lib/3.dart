
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/appcolors.dart' show AppColors;
import 'package:flutter_application_1/widgets/app_text%202.dart';
import 'package:google_fonts/google_fonts.dart';

import 'usernev.dart';
import 'widgets/app_button.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  int selectedIndex = -1; // Track selected option

  final List<String> options = [
    "My Pet 🐶",
    "My Love ❤️ ",
    "My future Self  😇",
    "Friends 😍"
  ]; // 4 options

  void selectOption(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        ),
        centerTitle: true,
        title: Text(
          "Assessment",
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          AppText(text: "3 of 3", color: AppColors.primaryColor),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: AppText(
                text: "Make your selections and generate your song.",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Who is Song for?",
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: List.generate(options.length, (index) {
                return Column(
                  children: [
                    OptionTile(
                      text: options[index],
                      isSelected: selectedIndex == index,
                      onTap: () => selectOption(index),
                    ),
                    const SizedBox(height: 20), // Space between each container
                  ],
                );
              }),
            ),
             SizedBox(
              height: 50,
            ),
            Center(
              child: AppButton(
                btnText: "Continue to Home",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => usernev())));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionTile({required this.text, required this.isSelected, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.blue : Colors.grey[300],
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 3,
              color: Colors.grey,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

