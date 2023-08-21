
import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/Card.dart';
import '../components/bottomButton.dart';
class ResulPage extends StatelessWidget {
  ResulPage(this.bmi,this.inter,this.result);

  final String inter;
  final String bmi;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),

            alignment: Alignment.bottomLeft,
            child: Expanded(

              child: Text("Your Result", style: kResultStyle1,),
            ),
          ),
          Expanded(
              flex: 5,
              child:

            Cards(
              colour: inactiveColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(result.toUpperCase(), textAlign: TextAlign.center,style: kResultSyle2,),
                  Text(bmi, style: kResultSyle3,),
                  Text(inter, style: kResultSyle4, textAlign: TextAlign.center,)
                ],
              ),
            )
          ),
          bottomButton((){
            Navigator.pop(context);
          }, "RE-CALCULATE")
        ],
      ),
    );
  }
}
