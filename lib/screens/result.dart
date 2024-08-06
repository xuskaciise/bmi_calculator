import 'package:bmi_calcultore/widgets/custom_button.dart';
import 'package:bmi_calcultore/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({super.key, required this.result});
  
  String translateResult() {
    if (result >= 0 && result <= 18.5) {
      return 'Underweight😒';
    } else if (result >= 18.6 && result <= 24.9) {
      return 'Normal weight 😊';
    } else if (result >= 25 && result <= 29.9) {
      return 'Overweight😆';
    } else if (result >= 30 && result <= 34.9) {
      return 'Obese Class I (Moderately Obese)';
    } else if (result >= 35 && result <= 39.9) {
      return 'Obese Class II (Severely Obese)';
    } else {
      return 'Obese Class III (Very Severely Obese)';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calcultor'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            Expanded(
                child: ResuableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      result.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      translateResult(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )),
            CustomButton(
              onpresed: () {},
              title: 'Re-Calculate',
            )
          ],
        ));
  }
}
