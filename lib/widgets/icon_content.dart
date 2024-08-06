import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icondata;
  final String title;
  const IconContent({
    super.key,
    required this.icondata,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
        icondata,
        size: 80,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 22, color: Colors.grey),
        ),
      ],
    );
  }
}
