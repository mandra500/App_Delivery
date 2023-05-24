//colors
import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Headers/header_text.dart';
//Commons Widgets

import 'package:flutter/material.dart';

Widget headerDoubleText(
    {required String textHeader,
    required String textAction,
    required Function()? func}) {
  return Row(
    children: [
      headerText(texto: textHeader, fontSize: 20.0),
      const Spacer(),
      GestureDetector(
        onTap: func,
        child: headerText(
            texto: textAction,
            color: orange,
            fontWeight: FontWeight.w500,
            fontSize: 15.0),
      ),
    ],
  );
}
