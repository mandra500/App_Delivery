import 'package:app_restaurant/src/colors/colors.dart';
import 'package:flutter/material.dart';

class PrecioFilter extends StatefulWidget {
  const PrecioFilter({Key? key}) : super(key: key);

  @override
  State<PrecioFilter> createState() => _PrecioFilterState();
}

class _PrecioFilterState extends State<PrecioFilter> {
  //propiedad
  RangeValues _values = const RangeValues(15, 100);
  int _minPrecio = 0;
  int _maxPrecio = 100;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('S/ $_minPrecio', style: const TextStyle(fontSize: 15.0)),
        SizedBox(
          width: 277,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 200.0,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrecio = newValues.start.round();
                _maxPrecio = newValues.end.round();
              });
            },
          ),
        ),
        Text('S/ $_maxPrecio', style: const TextStyle(fontSize: 15.0)),
      ],
    );
  }
}
