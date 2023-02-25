import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/provider_data.dart';

class BmiResult extends StatelessWidget {
  static const screenRoute = 'bmi_result';

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
              'Gender : ${Provider.of<MyProvider>(context).isMale ? 'Male' : 'Female'}',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              'Result : ${Provider.of<MyProvider>(context).result.round()}',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              'Age : ${Provider.of<MyProvider>(context).ageValue.round()}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
