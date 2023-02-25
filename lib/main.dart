import 'package:bmi_calc/bmi_calc/bmi_culc.dart';
import 'package:bmi_calc/bmi_calc/bmi_result.dart';
import 'package:bmi_calc/data/provider_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Bmicalc(),
        routes: {
          Bmicalc.screenRoute: (context) => Bmicalc(),
          BmiResult.screenRoute: (context) => BmiResult(),
        },
      ),
    );
  }
}
