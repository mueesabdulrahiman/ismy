import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ismy/names/names.dart';
import 'package:ismy/presentations/home_page/widgets/dialogBox.dart';
import 'package:ismy/presentations/home_page/widgets/icon_widget.dart';
import 'package:ismy/presentations/home_page/widgets/namedContainer.dart';
import 'package:ismy/presentations/home_page/widgets/translator.dart';
import 'package:ismy/presentations/widgets/seperator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //bool thumbOnPress = false;
  ValueNotifier<bool> thumbButtonPressNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    

    return Center(
      child: Container(
        height: 550,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.volume_up,
                    color: Colors.grey,
                  ),
                ],
              ),
             // MainNameContainer(child: Translator(length: 1,), color: Colors.white),
              
              //const NameContainer(label: 'Hamza', size: 17, color: Colors.white, labelColor: Colors.blue),
              //Text('${Translator(name: mix.first)}'),
              //   Translator(
              //   name: 'Hamza',
              // ),

              Text(names.first),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Hamza (also spelled as Hamzah, Hamzeh or Humza; Arabic: standardized transliteration is Hamzeh) is a  masculine given name in the Muslim world. the meaning of the name Hamza is lion, steadfast, strong and brave.',
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
              ),
              seperator(),
              GestureDetector(
                onTap: () {
                  showDialogBox(context, dialogBoxTextTile);
                },
                child: const NameContainer(
                  label: 'Famous People Named Hamza',
                  size: 15.0,
                  color: Colors.white,
                  labelColor: Colors.blue,
                ),
              ),
              seperator(),
              Row(
                children: const [
                  NameContainer(
                    label: 'Male',
                    size: 13,
                    color: Colors.blue,
                    labelColor: Colors.white,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  NameContainer(
                    label: 'Bravery',
                    size: 13,
                    color: Colors.blue,
                    labelColor: Colors.white,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  NameContainer(
                    label: 'Respect',
                    size: 13,
                    color: Colors.blue,
                    labelColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  NameContainer(
                    label: 'Warrior',
                    size: 13,
                    color: Colors.blue,
                    labelColor: Colors.white,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  NameContainer(
                    label: 'Honour',
                    size: 13,
                    color: Colors.blue,
                    labelColor: Colors.white,
                  ),
                ],
              ),
              seperator(),

              ValueListenableBuilder(
                valueListenable: thumbButtonPressNotifier,
                builder: (BuildContext ctx, bool newValue, Widget? _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButtonWidget(
                        icon: newValue == false
                            ? Icons.thumb_down_alt_outlined
                            : Icons.thumb_down_alt_rounded,
                        colour: newValue == false ? Colors.grey : Colors.blue,
                        onPress: () {
                          thumbButtonPressNotifier.value =
                              !thumbButtonPressNotifier.value;
                          thumbButtonPressNotifier.notifyListeners();
                        },
                      ),
                      IconButtonWidget(
                        icon: Icons.note_add_outlined,
                        onPress: () => notesDialogBox(context),
                        colour: Colors.grey,
                      ),
                      IconButtonWidget(
                        icon: newValue == false
                            ? Icons.thumb_up_alt_outlined
                            : Icons.thumb_up_alt_rounded,
                        colour: newValue == false ? Colors.grey : Colors.blue,
                        onPress: () {
                          thumbButtonPressNotifier.value =
                              !thumbButtonPressNotifier.value;
                          thumbButtonPressNotifier.notifyListeners();
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
