import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Headers/header_text.dart';

import 'package:flutter/material.dart';

Widget popularesCard(
    {required BuildContext context,
    double marginTop = 0.0,
    double marginRight = 0.0,
    double marginButton = 0.0,
    double marginLeft = 1.0,
    ImageProvider<Object>? image,
    required String title,
    required String subtitle,
    required String review,
    required String ratings,
    String buttonText = '',
    required bool hasActionButton}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
            top: marginTop,
            right: marginRight,
            bottom: marginButton,
            left: marginLeft),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
                  Image(width: 80, height: 80, fit: BoxFit.cover, image:image!),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 7.0),
                        child: headerText(
                            texto: title, color: Colors.black, fontSize: 17.0)),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        subtitle,
                        style: const TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                        Text(review,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0)),
                        Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: Text(ratings,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          width: 80.0,
                          height: 18.0,
                          child: hasActionButton
                              ? ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor: orange,
                                  ),
                                  child: Text(buttonText,
                                      style: const TextStyle(fontSize: 11.0)))
                              : const Text(''),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    ],
  );
}
