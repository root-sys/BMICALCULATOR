import 'package:flutter/material.dart';

import 'constants.dart';

class iconCard extends StatelessWidget {

  final IconData datas;
  final String label;

  iconCard(@required this.datas, @required this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          datas,
          size: 60.0,
          color: Color(0xFF253D2F),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: textS
        )
      ],
    );
  }
}