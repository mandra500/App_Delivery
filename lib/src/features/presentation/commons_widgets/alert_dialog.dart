import 'package:flutter/material.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/header_text.dart';
//Image.asset('assets/img/lock.png','Done' 'En breve recibirá un correo electrónico con un código para configurar una nueva contraseña'

void showAlertDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitle, String headerSubTitle, Widget doneButton) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        content: SizedBox(
          height: 400,
          child: Column(
            children: [
              Image(
                image: imagePath,
                width: 130,
                height: 130,
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: headerText(headerTitle, Theme.of(context).primaryColor,
                    FontWeight.bold, 20.0),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
                  headerSubTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              doneButton
            ],
          ),
        ),
      );
    },
  );
}
