import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double? result;
  late String category;

  BmiResultScreen({
    Key? key,
    @required this.result,
  }) : super(key: key) {
    if (result! < 18.5) {
      category = 'UNDERWEIGHT';
    } else if (result! >= 18.5 && result! <= 24.9) {
      category = 'NORMAL WEIGHT';
    } else if (result! >= 25 && result! <= 29.9) {
      category = 'OVERWEIGHT';
    } else if (result! >= 30 && result! <= 40) {
      category = 'OBESITY';
    } else {
      category = 'SERVERE OBESITY';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff4f3ff),
      appBar: AppBar(
        backgroundColor: const Color(0xffff4f3ff),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xfff081854),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Body Mass Index',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0xfff081854),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: 333,
              height: 416,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'BMI Results',
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfff081854),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${result?.toStringAsFixed(2).split('.')[0]}',  // Integer part
                        style: const TextStyle(
                          fontSize: 140,
                          fontWeight: FontWeight.w700,
                          color: Color(0xfff6c63ff),
                        ),
                      ),
                      Text(
                        '.${result?.toStringAsFixed(2).split('.')[1]}',  // Decimal part
                        style: const TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfff6c63ff),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    category,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfff081854),
                    ),
                  ),
                  const Text(
                    'Underweight: BMI less than 18.5',
                    style: TextStyle(
                      color: Color(0xfff081854),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'Normal weight: BMI 18.5 to 24.9',
                    style: TextStyle(
                      color: Color(0xfff081854),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'Overweight: BMI 25 to 29.9',
                    style: TextStyle(
                      color: Color(0xfff081854),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'Obesity: BMI 30 to 40',
                    style: TextStyle(
                      color: Color(0xfff081854),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'Servere Obesity: BMI greater than 40',
                    style: TextStyle(
                      color: Color(0xfff081854),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(63),
                color: const Color(0xfff6c63ff),
              ),
              child: MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Saved...')),
                  );
                },
                child: const Text(
                  'Save the results',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
