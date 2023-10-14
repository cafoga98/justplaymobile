import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final extraLarge = TextStyle(
  fontFamily: 'Caveat',
  fontWeight: FontWeight.bold,
  fontSize: 30.sp,
  color: Colors.white,
);

final large = TextStyle(
  fontFamily: 'Caveat',
  fontSize: 25.sp,
  color: Colors.black,
);

final medium = TextStyle(
  fontFamily: 'Caveat',
  fontSize: 18.sp,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final small = TextStyle(
  fontFamily: 'Caveat',
  fontSize: 16.sp,
  color: Colors.black,
);

InputDecoration inputTextFormField = InputDecoration(
  hintStyle: medium.copyWith(color: Colors.grey),
  isDense: true,
  filled: true,
  fillColor: Colors.white,
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
);
