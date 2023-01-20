import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  late bool isMale;
  late double result;
  late double age;
  BmiResult({
    Key? key,
    required this.age,
    required this.isMale,
    required this.result,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text('Bmi Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              'Result : ${result.round()}',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              'Age : ${age.round()}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
