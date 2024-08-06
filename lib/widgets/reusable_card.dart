import 'package:bmi_calcultore/constents.dart';
import 'package:flutter/material.dart';
   



class ResuableCard extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onpresed;
  const ResuableCard({
    super.key,
    this.child,
    this.selected=false,
    this.onpresed,
    
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onpresed,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
           color: selected== true ? kActiveCardColor:kInActiveCardColor,
        ),
      ),
    );
  }
}
