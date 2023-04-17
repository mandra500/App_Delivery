import 'package:app_restaurant/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:app_restaurant/src/features/presentation/tabs/favourite_tab/View/favourite.dart';
import 'package:app_restaurant/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:app_restaurant/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
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
}
