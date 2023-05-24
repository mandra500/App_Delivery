import 'dart:ui';
import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Botones/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    'https://lirp.cdn-website.com/a2c1bca6/dms3rep/multi/opt/2395418-515_logo-c51ce-1920w.png',
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: const Text(
                  '¡El auténtico Sabor Trujillano!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                  ),
                ),
              ),
              roundedButton(
                  context: context,
                  labelButton: 'Iniciar sesión',
                  color: orange,
                  funcx: () {
                    Navigator.pushNamed(context, 'login');
                  }),
              roundedButton(
                context: context,
                labelButton: 'Iniciar sesión con Facebook',
                color: fbButtonColor,
                isWithIcon: true,
                icon: const AssetImage('assets/img/facebook.png'),
                funcx: () => debugPrint("goToFacebook"),
              ),

              //aqui va el botton azul de facebook
            ],
          ),
        ],
      ),
    );
  }
}
