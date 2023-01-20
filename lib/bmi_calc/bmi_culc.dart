// ignore_for_file: avoid_print
import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({Key? key}) : super(key: key);

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

class _BmicalcState extends State<Bmicalc> {
  Color background = const Color(0xff0a0f1e);
  Color cardcolor = const Color(0xff101323);
  Color selectedcolor = const Color(0xff101323);
  Color buttoncolor = const Color(0xffe6144b);
  Color hovercolor = const Color.fromARGB(255, 59, 72, 83);

  double hieghtValue = 160;
  double wieghtValue = 75;
  double ageValue = 30;
  bool isMAle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMAle = true;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          color: isMAle ? hovercolor : cardcolor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 136, 132, 132),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMAle = false;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: !isMAle ? hovercolor : cardcolor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 136, 132, 132),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'HIEGHT',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${hieghtValue.round()}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        // fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Slider(
                    value: hieghtValue,
                    max: 230,
                    thumbColor: buttoncolor,
                    activeColor: Colors.white70,
                    inactiveColor: Colors.white54,
                    onChanged: (value) {
                      setState(() {
                        hieghtValue = value;
                      });
                    })
              ],
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: cardcolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WIEGHT',
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Text(
                              '${wieghtValue.round()}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 45,
                                child: FloatingActionButton(
                                  backgroundColor: hovercolor,
                                  heroTag: 'weight-',
                                  onPressed: () {
                                    setState(() {
                                      wieghtValue--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                height: 45,
                                child: FloatingActionButton(
                                  backgroundColor: hovercolor,
                                  heroTag: 'weight+',
                                  onPressed: () {
                                    setState(() {
                                      wieghtValue++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: cardcolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Text(
                              '${ageValue.round()}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 45,
                                child: FloatingActionButton(
                                  backgroundColor: hovercolor,
                                  heroTag: 'age-',
                                  onPressed: () {
                                    setState(() {
                                      ageValue--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                height: 45,
                                child: FloatingActionButton(
                                  backgroundColor: hovercolor,
                                  heroTag: 'age+',
                                  onPressed: () {
                                    setState(() {
                                      ageValue++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                )),
            height: 60,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                double result = wieghtValue / pow(hieghtValue / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BmiResult(
                            age: ageValue,
                            isMale: isMAle,
                            result: result,
                          )),
                );
              },
              child: const Text(
                'calcutor',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    letterSpacing: 2.6,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
