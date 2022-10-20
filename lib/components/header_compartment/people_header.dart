// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PeopleHeader extends StatelessWidget {
  const PeopleHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      // ignore: prefer_const_literals_to_create_immutables
      child: Row(children: [
        Text(
          "People",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
