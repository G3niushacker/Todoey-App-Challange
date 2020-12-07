import 'package:flutter/material.dart';

const BoxDecoration kContainerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20)
    )
);
const InputDecoration kTextFieldDecoration = InputDecoration(
  focusColor: Colors.lightBlueAccent,
);
const TextStyle kAddTaskTextStyle = TextStyle(fontSize: 22,color: Colors.lightBlueAccent);
const TextStyle kTodoeyTextStyle = TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.white,);
const TextStyle kTaskLengthTextStyle = TextStyle(fontSize: 18,color: Colors.white);
const double kPaddingValue = 30.0;