import 'package:bmi_calcultore/constents.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onpresed;
  final String? title;
  const CustomButton({super.key, required this.onpresed, this.title});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpresed,
      child:  Text(
        title ?? 'CALCULATE',
        style:  TextStyle(fontSize: 20),
      ),
      fillColor: kBottomContainerColor,
      constraints: const BoxConstraints.tightFor(
        width: double.infinity,
        height: 56,
      ),
    );
  }
}
