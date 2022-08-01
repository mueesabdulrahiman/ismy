import 'package:flutter/material.dart';


class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  static ValueNotifier<int> navbarIndex = ValueNotifier(0);


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navbarIndex,
      builder: (BuildContext context, int newIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            navbarIndex.value = value;
          },
          currentIndex: newIndex,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Text(
                  'A-Z',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: navbarIndex.value == 1
                          ? Colors.blue
                          : Colors.grey.shade700),
                ),
                label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: '')
          ],
        );
      },
    );
  }
}
