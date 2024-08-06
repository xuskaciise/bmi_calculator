import 'dart:math';

import 'package:bmi_calcultore/constents.dart';
import 'package:bmi_calcultore/screens/result.dart';
import 'package:bmi_calcultore/widgets/custom_button.dart';
import 'package:bmi_calcultore/widgets/icon_content.dart';
import 'package:bmi_calcultore/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/round_button.dart';
enum Gander{
male,female
}
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  int weight = 0;
  int age = 0;
  Gander selectedGander=Gander.male;

  void gotoNexstScreen(){
    double result=weight/pow(height/100,2);
   
    Navigator.push(context, MaterialPageRoute(builder: (context){
    return ResultScreen(result: result,);
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calcultor'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:  Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    selected: selectedGander==Gander.male?true:false,
                    onpresed: (){
                      setState(() {
                        selectedGander=Gander.male;
                      });


                    },
                    child: IconContent(
                      icondata: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                     selected: selectedGander==Gander.female?true:false,
                    onpresed: (){
                      setState(() {
                        selectedGander=Gander.female;
                      });


                    },
                    child: IconContent(
                      icondata: FontAwesomeIcons.venus,
                      title: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.round().toString(),
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      const     Text('cm'),
                     const  SizedBox(height: 10),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: kBottomContainerColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                    ),
                    child: Slider(
                      value: height,
                      min: 10,
                      max: 310,
                      onChanged: (newval) {
                        setState(() {
                          height = newval;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('WEIGHT',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icondata: Icons.remove,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              icondata: Icons.add,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          age.toString(),
                          style:const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icondata: Icons.remove,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundButton(
                              icondata: Icons.add,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

       CustomButton(onpresed:gotoNexstScreen)
        ]
      ),
    );
  }
}

