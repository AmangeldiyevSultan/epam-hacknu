// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});
  static const String routeName = '/learningpage';
  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  var List = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: List.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){}
              ,
              child: Container(
                padding: EdgeInsets.only(top: 25, left: 15),
                child: Text(List[index]),
              ),
            );
          }),
    );
  }
}
