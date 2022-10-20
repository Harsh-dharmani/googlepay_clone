// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class PramotionData extends StatelessWidget {
  const PramotionData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 30,
                  child: Icon(
                    Icons.emoji_events,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Rewrds",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 30,
                  child: Icon(
                    Icons.local_offer,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Offers",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30,
                  child: Icon(
                    Icons.emoji_events,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Refferls",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
