import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ismy/names/names.dart';
import 'package:ismy/presentations/home_page/widgets/translator.dart';
import 'package:ismy/presentations/widgets/background_color_gradient.dart';
import 'package:translator/translator.dart';

class Item {
  final String headerText1;
  final String headerText2;
  final String body;
  Item(
      {required this.headerText2,
      required this.headerText1,
      required this.body});
}


// String tr(String name)  {
//   if()
//     var translated =   translator.translat(name);
// return translated.toString();
// }
List<Item> generateItems(List<String> person)  {

      
  return List<Item>.generate(person.length, (index) {
    Translator translator = Translator();

    translator.translat(person[index]);
final t = translator.namee;
if(t !=null) {log(t.length.toString());
}

    return Item(
        headerText1: t ?? '',
         headerText2:  person[index],
                body:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ');
  });
}

class NotesPage extends StatefulWidget {
  NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Item> items = generateItems(names);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: backgroundColour()),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              const Text(
                'Notes',
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Card(
                        child: ExpansionTile(
                          title: Row(
                            children: [
                              Text(items[index].headerText1),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(items[index].headerText2),
                              // Text(
                              //   ,
                              //   style: const TextStyle(
                              //       fontSize: 25, fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                items[index].body,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) => const SizedBox(height: 5.0),
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
