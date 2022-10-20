// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../models/usermodel.dart';

class UserDetail extends StatelessWidget {
  final ScrollController controller;
  const UserDetail({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: dummyData.length,
        controller: controller,
        itemBuilder: (BuildContext context, i) {
          return GridTile(
              child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(dummyData[i].imgUrl),
                radius: 30,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                dummyData[i].name,
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              )
            ],
          ));
        },
      ),
    );
  }
}
