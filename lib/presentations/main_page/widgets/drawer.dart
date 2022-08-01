import 'package:flutter/material.dart';
import 'package:ismy/presentations/main_page/widgets/navbar.dart';
import 'package:ismy/presentations/notes_page/notes_page.dart';
import 'package:ismy/presentations/widgets/seperator.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250.0,
      
      child: ListView(
        //padding: EdgeInsets.all(50),
        children: [
          const Center(
            child: DrawerHeader(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Text(
                'ISMY',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
           drawerListTile(
            label: 'Home',
            onPress: (){
              Navigator.pop(context);
             NavigationBarWidget.navbarIndex.value = 0;
            },
          ),
          seperator(),
           drawerListTile(
            label: 'Favourites',
            onPress: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> NotesPage()));
            },
          ),
          seperator(),
          const drawerListTile(
            label: 'Search',

     
          ),
          seperator(),
          const drawerListTile(
            label: 'A-z',

     
          ),
          seperator(),
          const drawerListTile(
            label: 'Notes',

     
          ),
          seperator(),
          const drawerListTile(
            label: 'Library',

     
          ),
          seperator(),
          const drawerListTile(
            label: 'Shop',

     
          ),
          seperator(),
          const drawerListTile(
            label: 'Linked Partners',
            
          ),
          seperator(),
          const drawerListTile(
            label: 'About',

     
          ),
        ],
      ),
    );
  }
}

class drawerListTile extends StatelessWidget {
  const drawerListTile({
    Key? key,
    required this.label,
     this.onPress,
  }) : super(key: key);

  final String label;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
          onTap: onPress,
          child: Text(
              label,
              style:  TextStyle(color: Colors.grey[700], fontSize: 25.0),
            ),
        ));
  }
}
