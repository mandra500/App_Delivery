import 'package:app_restaurant/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:app_restaurant/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:app_restaurant/src/features/presentation/tabs/favourite_tab/View/favourite.dart';
import 'package:app_restaurant/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:app_restaurant/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';
import 'package:flutter/material.dart';

//import '../login_page/View/login_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirUbicacion(context);
    });
  }

  final List<Widget> _widgetOptions = [
    const ExploreTab(),
    const MyOrderTab(),
    const FavouriteTab(),
    const ProfileTab()
  ];

  int _selectItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Mi Orden'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'perfil')
        ]);
  }

  Future _pedirUbicacion(BuildContext context) async {
    showAlertDialog(
        context,
        const AssetImage('assets/img/location.png'),
        'Habilita tu Ubicación',
        "Permita usar su ubicación para mostrar el restaurante cercano en el mapa",
        _doneButton(context, "habilitar ubicación"));
  }
}

Widget _doneButton(BuildContext context, String labelButton) {
  return Container(
    width: 200,
    height: 65,
    padding: const EdgeInsets.only(top: 20),
    child: ElevatedButton(
      onPressed: () {
        // ignore: avoid_print
        print("habilitar geolocalización");
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      child: Text(
        labelButton,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
  );
}
