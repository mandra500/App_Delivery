import 'package:flutter/material.dart';

Widget doneButton({
  required BuildContext context,
  double width = 350.0,
  double height = 45.0,
  double radius = 20.0,
  bool isWithIcon = false,
  required String labelButton,
}) {
  return Container(
    width: width,
    height: height,
    padding: const EdgeInsets.only(top: 20),
    child: isWithIcon
        ? _elevatedButtonWithIcon(
            radius, AssetImage('assets/img/facebook.png'), labelButton, context)
        : _elevatedButtonNotIcon(radius, labelButton, context),
  );
}

Widget _elevatedButtonWithIcon(double radius, ImageProvider<Object> icon,
    String labelButton, BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: icon,
          width: 20.0,
          height: 20.0,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          labelButton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
}

Widget _elevatedButtonNotIcon(
    double radius, String labelButton, BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          labelButton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
}
