import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class ListTileOrder extends StatefulWidget {
  final String texto;
  final bool isActive;
  final Function()? func;

  const ListTileOrder({
    Key? key,
    required this.texto,
    required this.isActive,
    required this.func,
  }) : super(key: key);

  @override
  State<ListTileOrder> createState() => _ListTileOrderState();
}

class _ListTileOrderState extends State<ListTileOrder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
          context: context,
          texto: widget.texto,
          isActive: widget.isActive,
          func: widget.func,
        ),
      ],
    );
  }
}

Widget listTiles({
  required BuildContext context,
  required String texto,
  bool isActive = false,
  Function()? func,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    ),
    child: ListTile(
      onTap: func,
      title: headerText(
        texto: texto,
        color: isActive ? orange : Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 17.0,
      ),
      trailing: isActive ?Icon(
        Icons.check,
        color: isActive ? orange : gris,
      ) : const Text(''),
    ),
  );
}
