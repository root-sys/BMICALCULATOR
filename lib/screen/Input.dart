import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/Card.dart';
import '../components/iconCard.dart';
import '../components/constants.dart';
import '../components/iconButton.dart';
import '../screen/ResultPage.dart';
import '../components/engine.dart';
import '../components/bottomButton.dart';



int heights = 180;
int weight = 60;
int age = 25;

var selectedGender = Gender.male;

enum Gender { male, female }

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Cards(
                    colour: selectedGender == Gender.male
                        ? activeColor
                        : inactiveColor,
                    childCard: iconCard(FontAwesomeIcons.mars, "MALE"),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  )),
                  Expanded(
                      child: Cards(
                    colour: selectedGender == Gender.female
                        ? activeColor
                        : inactiveColor,
                    childCard: iconCard(FontAwesomeIcons.venus, "FEMALE"),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Cards(
                    colour: inactiveColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: textS1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              heights.toString(),
                              style: textS2,
                            ),
                            Text(
                              "cm",
                              style: textS1,
                            )
                          ],
                        ),
                        SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Color(0xFF253D2F),
                                inactiveTrackColor: Color(0x99253D2F),
                                thumbColor: Colors.deepOrange,
                                overlayColor: Color(0x99ee7600)),
                            child: Slider(
                              value: heights.toDouble(),
                              onChanged: (double newValue) {
                                setState(() {
                                  heights = newValue.round();
                                });
                              },
                              min: 120,
                              max: 220,
                            ))
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Cards(
                    colour: inactiveColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: textS,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: textS2,
                            ),
                            Text(
                              'Kg',
                              style: textS1,
                            )
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconButton(
                                pressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                sicon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              iconButton(
                                pressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                sicon: FontAwesomeIcons.minus,
                              )
                            ])
                      ],
                    ),
                  )),
                  Expanded(
                      child: Cards(
                    colour: inactiveColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: textS,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              age.toString(),
                              style: textS2,
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconButton(
                                pressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                sicon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              iconButton(
                                pressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                sicon: FontAwesomeIcons.minus,
                              )
                            ])
                      ],
                    ),
                  ))
                ],
              ),
            ),
            bottomButton(() {
              engine eng = engine(height:heights, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ResulPage(
                      eng.calculateBMI(),eng.getInter(),eng.Result()
                  );
                }),
              );
            },
            'CALCULATE')
          ],
        ));
  }
}



