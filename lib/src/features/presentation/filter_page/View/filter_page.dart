import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
    );
  }

  AppBar _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: headerText(
      texto: 'Filtros',
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
    ),
    leading: Container(
      padding: const EdgeInsets.only(top: 20, left: 5),
      child: headerText(
        texto: 'Reset',
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      ),
    ),
    actions: [
      Container(
        padding: const EdgeInsets.only(top: 20, right: 10.0),
        child: headerText(
          texto: 'Enviar',
          color: orange,
          fontWeight: FontWeight.w500,
          fontSize: 17.0,
        ),
      ),
    ],
  );
}
}