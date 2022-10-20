import 'package:flutter/material.dart';

import '../../models/model.dart';

class Businessicon extends StatelessWidget {
  final ScrollController controller;
  const Businessicon({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: Fakedata.length,
        controller: controller,
        itemBuilder: (BuildContext context, i) {
          return GridTile(
              child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(Fakedata[i].imgUrl),
                radius: 30,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                Fakedata[i].name,
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
