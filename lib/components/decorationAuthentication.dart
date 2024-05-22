// ignore: file_names
import 'package:flutter/material.dart';
import 'package:gymfit/common/colors.dart';

InputDecoration getAuthenticatioInputDecoration(String label){
  return InputDecoration(
    label: Text(label),
    labelStyle: const TextStyle(
      color: MyColors.roxoForte,
    ),
  );
}

class DecorationAuthentication {
  
}