import 'package:flutter/material.dart';

class PromationHeader extends StatelessWidget {
  const PromationHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Text(
            "Promation",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
