import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icondata;
  final Function()? onpressed;
  const RoundButton({
    super.key,
    required this.icondata,
     this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:  Icon(icondata,size: 50,),
      fillColor: Colors.grey,
      shape: CircleBorder(),
      onPressed: onpressed,
      constraints: BoxConstraints.tightFor( 
        width:56,
        height:56,
      ),
    );
  }
}
