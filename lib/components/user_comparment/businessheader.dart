import 'package:flutter/material.dart';

class BusinessHeader extends StatelessWidget {
  const BusinessHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Busieness and bills",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.blue[600],
                      size: 20,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue[600]),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
