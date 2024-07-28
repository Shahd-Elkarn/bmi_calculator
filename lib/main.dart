//import 'package:bmi_calculator/bmi_result.dart';
import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff6c63ff),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 30.5, vertical: 34.25),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'BMIDO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 31,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 59,
                ),
                const Image(
                  image: AssetImage(
                    'images/img1.png',
                  ),
                  width: 296,
                  height: 251,
                ),
                const SizedBox(
                  height: 95,
                ),
                const Text(
                  'Get Started with',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Tracking Your Health!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Calculate your BMI and stay on top of ',
                  style: TextStyle(
                    color: Color(0xfffc6c3f9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'your wellness journey, effortlessly.',
                  style: TextStyle(
                    color: Color(0xfffc6c3f9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  width: 332,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(63),
                    color: const Color(
                      0xffff4f3ff,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BmiScreen()),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
