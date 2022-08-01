import 'package:flutter/material.dart';
import 'package:ismy/presentations/a-z_page/a-z_page.dart';
import 'package:ismy/presentations/cart_page/cart_page.dart';
import 'package:ismy/presentations/favourites_page/favourites_page.dart';
import 'package:ismy/presentations/home_page/home_page.dart';
import 'package:ismy/presentations/main_page/widgets/drawer.dart';
import 'package:ismy/presentations/main_page/widgets/navbar.dart';
import 'package:ismy/presentations/search_page/search_page.dart';
import 'package:ismy/presentations/widgets/background_color_gradient.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final _navbarPages =  [
    HomePage(),
    AlphabetsPage(),
    SearchPage(),
    CartPage(),
    FavouritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: const  MyDrawer(),
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
            gradient: backgroundColour(),
          ),
          child: ValueListenableBuilder(
              valueListenable: NavigationBarWidget.navbarIndex,
              builder: (BuildContext context, int newIndex, Widget? _) {
                return _navbarPages[newIndex];
              }),
        ),
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }

  
}
