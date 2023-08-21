import 'dart:math';
import 'dart:developer' as eos;

class engine {
  engine({required this.height, required this.weight});

  final int height;
  final int weight;

late double _bmi ;

  String calculateBMI() {

      //adult
      //BMI Formular == Weight in Kg / square of height in metres
      _bmi = weight / pow(height / 100, 2);
eos.log(_bmi.toString());
      //children
      //BMI Formular == Weight in pounds * 703 (a) / square of height in inches (b)



    return _bmi.toStringAsFixed(1);
  }

  String Result() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInter() {
    if (_bmi >= 30) {
      return 'You are obese. See a doctor or pharmacist for counselling.';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}