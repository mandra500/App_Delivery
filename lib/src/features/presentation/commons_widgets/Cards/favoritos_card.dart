import 'package:app_restaurant/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
import 'package:app_restaurant/src/colors/colors.dart';

Widget favoritosCard({
  required BuildContext context,
  double marginTop = 15.0,
  double marginRight = 0.0,
  double marginButton = 0.0,
  double marginLeft = 0.0,
  ImageProvider<Object>? image,
  required String title,
  required String subtitle,
  required String review,
  required String ratings,
  String buttonText = '',
  required bool hasActionButton,
  bool isFavorito = true,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginButton,
      left: marginLeft,
    ),
    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              offset: Offset(0, 5),
              blurRadius: 10.0)
        ]),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 90.0,
            height: 90.0,
            fit: BoxFit.cover,
            image: image!,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          texto: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                  const SizedBox(
                    width: 25.0,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        size: 35.0,
                        color: isFavorito ? rosa : Colors.grey[300],
                      ),
                      onPressed: () {})
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: headerText(
                    texto: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: camarillo, size: 16),
                  headerText(
                      texto: review,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.0),
                  headerText(
                      texto: ratings,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 110.0,
                    height: 25.0,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: orange,
                        ),
                        child: headerText(
                            texto: buttonText,
                            fontSize: 11.0,
                            color: Colors.white)),
                  )
                ],
              )
            ],
          ),
        )
        // Aquí puedes agregar más elementos en la columna si es necesario
      ],
    ),
  );
}
