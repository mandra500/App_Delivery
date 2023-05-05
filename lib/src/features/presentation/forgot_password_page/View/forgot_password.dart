import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/rounded_button.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/header_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText('Has olvidado tu contraseña',
                  Theme.of(context).primaryColor, FontWeight.bold, 30.0),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Por favor, introduzca su dirección de correo electrónico. Recibirá un enlace para crear una nueva contraseña por correo electrónico.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              buildEmailInput(),
              roundedButton(
                  context: context,
                  labelButton: 'Enviar',
                  color: orange,
                  funcx: () => _showAlerta(context))
              //buildLoginButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

//caja de texto para el email
Widget buildEmailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

// Boton de enviar para restablecer contraseña
//Widget buildLoginButton(BuildContext context) {
//  return Container(
//    width: 200,
//    height: 65,
//    padding: const EdgeInsets.only(top: 20),
//    child: ElevatedButton(
//      onPressed: () {
//        _showAlerta(context);
//      },
//      style: ElevatedButton.styleFrom(
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(20),
//        ),
//        backgroundColor: Theme.of(context).colorScheme.secondary,
//      ),
//      child: const Text(
//        'Enviar',
//        style: TextStyle(
//          color: Colors.white,
//          fontSize: 15,
//        ),
//      ),
//    ),
//  );
//}

void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      const AssetImage('assets/img/lock.png'),
      "Tu contraseña ha sido restablecida",
      "En breve recibirá un correo electrónico con un código para configurar una nueva contraseña",
      roundedButton(
          context: context,
          labelButton: 'Done',
          color: orange,
          funcx: () {
            Navigator.pushNamed(context, 'login');
          }));
}
