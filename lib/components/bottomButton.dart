import 'package:flutter/material.dart';
import 'constants.dart';


class bottomButton extends StatelessWidget {
  final Function() Press;
  final String title;

  bottomButton(@required this.Press, @required this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Press,
      child: Container(
        alignment: Alignment.center,
        child: Text(title, style: TextStyle(
          fontSize: 22.0
        ),),
        color: colorBottom,
        width: double.infinity,
        height: height,
        margin: const EdgeInsets.only(top: 14.0),
      ),
    );
  }
}