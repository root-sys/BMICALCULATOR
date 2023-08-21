import 'package:flutter/material.dart';

class iconButton extends StatelessWidget {

  final Function() pressed;
  final IconData sicon;

  iconButton({required this.pressed,required this.sicon});

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(onPressed:pressed,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0
      ),
      shape: CircleBorder(),
      elevation: 6.0,
      child: Icon(sicon),
      fillColor: Color(0xD9253D2F),

    );
  }
}
