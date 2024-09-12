import 'package:flutter/material.dart';

import '../../SizeConfig.dart';

class SignUpEnterEmailWidget extends StatefulWidget {
  @override
  _SignUpEnterEmailWidgetState createState() => _SignUpEnterEmailWidgetState();
}

class _SignUpEnterEmailWidgetState extends State<SignUpEnterEmailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightmultiplier * 14 / 2,
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.heightmultiplier * 2 / 2,
          horizontal: SizeConfig.heightmultiplier * 2 / 2),
      alignment: Alignment.centerLeft,
      child: TextField(
        style: TextStyle(
            color: Colors.white60,
            fontSize: SizeConfig.heightmultiplier * 3.7 / 2),
        decoration: InputDecoration(
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white54)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            contentPadding: EdgeInsets.only(left: 2, bottom: 10),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            hintText: 'Enter email',
            hintStyle: TextStyle(
                color: Colors.white54,
                fontSize: SizeConfig.heightmultiplier * 3.7 / 2)),
      ),
    );
  }
}
