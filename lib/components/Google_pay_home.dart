// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructor, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:googlepay_clone/components/promation_compatment/promationdata.dart';
import 'package:googlepay_clone/components/user_comparment/businessicons.dart';
import 'package:googlepay_clone/models/model.dart';
import '../business_comparment/businessbanner.dart';
import '../business_comparment/custom_panter.dart';
import 'header_compartment/people_header.dart';
import 'header_compartment/scroll_handle.dart';
import 'user_comparment/businessheader.dart';
import 'user_comparment/loadmore.dart';
import 'user_comparment/promationheader.dart';
import 'user_comparment/seprator.dart';
import 'user_comparment/user_details.dart';

class GooglePayHome extends StatefulWidget {
  GooglePayHome({Key? key}) : super(key: key);

  @override
  State<GooglePayHome> createState() => _GooglePayHomeState();
}

class _GooglePayHomeState extends State<GooglePayHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[700],
        child: Stack(
          children: [
            // ignore: prefer_const_constructors
            HeaderWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 110),
              child: Image.asset(
                "assets/google_icon.png",
                fit: BoxFit.contain,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.6,
              builder:
                  (BuildContext context, ScrollController myscrollController) {
                return ListView.builder(
                  controller: myscrollController,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )),
                      child: Column(children: [
                        SizedBox(
                          height: 12,
                        ),
                        ScrollHandle(),
                        SizedBox(height: 20),
                        PeopleHeader(),
                        SizedBox(height: 20),
                        UserDetail(controller: myscrollController),
                        LoadMore(),
                        SizedBox(height: 30),
                        Seprator(),
                        SizedBox(height: 30),
                        BusinessHeader(),
                        SizedBox(height: 20),
                        BusinessBanner(),
                        SizedBox(
                          height: 30,
                        ),
                        Businessicon(
                          controller: myscrollController,
                        ),
                        LoadMore(),
                        SizedBox(height: 30),
                        Seprator(),
                        SizedBox(height: 30),
                        PromationHeader(),
                        SizedBox(height: 20),
                        PramotionData(),
                        SizedBox(height: 5)
                      ]),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.center_focus_weak,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            child: Icon(Icons.people),
          )
        ],
      ),
    );
  }
}
