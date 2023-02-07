import 'dart:ui';

import 'package:bioclock/data.dart';
import 'package:bioclock/theme_data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Alarm",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: CustomColors.primaryTextColor,
            fontSize: 24,
          ),
        ),
        Expanded(
          child: ListView(
            children: alarms.map<Widget>((alarm) {
              return Container(
                margin: EdgeInsets.only(bottom: 32),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: GradientColors.mango,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.red.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 4,
                        offset: Offset(4, 4)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.label,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Study",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Switch(
                          value: true,
                          onChanged: (bool value) {},
                          activeColor: Colors.white,
                        ),
                      ],
                    ),
                    Text(
                      "Mon - Sun",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "08:30 AM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 36,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              );
            }).followedBy([
              DottedBorder(
                strokeWidth: 3,
                color: CustomColors.clockOutline,
                borderType: BorderType.RRect,
                radius: Radius.circular(24),
                dashPattern: [5, 4],
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CustomColors.clockBG,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/plus.png"),
                        SizedBox(height: 8),
                        Text(
                          "Add Alarm",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]).toList(),
          ),
        ),
      ]),
    );
  }
}
