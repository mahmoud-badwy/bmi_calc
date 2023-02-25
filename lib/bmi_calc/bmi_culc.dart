import 'package:bmi_calc/bmi_calc/bmi_result.dart';
import 'package:bmi_calc/data/colors.dart';
import 'package:bmi_calc/data/provider_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bmicalc extends StatelessWidget {
  static const screenRoute = 'bmi_calc';
  MyColors colors = MyColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.background,
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
                      Provider.of<MyProvider>(context,listen: false).onMale();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          color: Provider.of<MyProvider>(context).isMale
                              ? colors.hovercolor
                              : colors.cardcolor,
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
                      Provider.of<MyProvider>(context,listen: false).onFemale();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: !Provider.of<MyProvider>(context).isMale
                              ? colors.hovercolor
                              : colors.cardcolor,
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
                      '${Provider.of<MyProvider>(context).heightValue.round()}',
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
                    value: Provider.of<MyProvider>(context).heightValue,
                    max: 230,
                    thumbColor: colors.buttoncolor,
                    activeColor: Colors.white70,
                    inactiveColor: Colors.white54,
                    onChanged: (value) {
                      Provider.of<MyProvider>(context,listen: false).changeHeight(value);
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
                          color: colors.cardcolor,
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
                              '${Provider.of<MyProvider>(context).wieghtValue.round()}',
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
                                  backgroundColor: colors.hovercolor,
                                  heroTag: 'weight-',
                                  onPressed: () {
                                    Provider.of<MyProvider>(context,listen: false)
                                        .decrementWeight();
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
                                  backgroundColor: colors.hovercolor,
                                  heroTag: 'weight+',
                                  onPressed: () {
                                    Provider.of<MyProvider>(context,listen: false)
                                        .incrementWeight();
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
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: colors.cardcolor,
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
                              '${Provider.of<MyProvider>(context).ageValue.round()}',
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
                                  backgroundColor: colors.hovercolor,
                                  heroTag: 'age-',
                                  onPressed: () {
                                    Provider.of<MyProvider>(context,listen: false)
                                        .decrementAge();
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
                                  backgroundColor: colors.hovercolor,
                                  heroTag: 'age+',
                                  onPressed: () {
                                    Provider.of<MyProvider>(context,listen: false)
                                        .incrementAge();
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
                color: colors.buttoncolor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                )),
            height: 60,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                Provider.of<MyProvider>(context,listen: false).bmiCalc();
                Navigator.pushNamed(context, BmiResult.screenRoute);
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
