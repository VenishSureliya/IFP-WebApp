import 'package:flutter/material.dart';
import 'package:ifp_webapp/utils/color_list.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.transparent),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: ColorList.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
