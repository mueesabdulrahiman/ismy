import 'package:flutter/material.dart';
import 'package:ismy/names/names.dart';
import 'package:translator/translator.dart';

class Translator{
  //static ValueNotifier<List<String>> translateIndexNotifier = ValueNotifier([]);
  String? namee;
  List<Text> n = [];
  @override

  // String  getNames() {
  // void translate() {
  //   for (String name in names) {
  //     translator.translate(name[1], to: 'en').then((value) {
  //       Translator.translateIndexNotifier.value.add(value.toString());
  //       Translator.translateIndexNotifier.notifyListeners();
  //     });
  //   }
  // }

  void translat(String name) async  {

       GoogleTranslator translator = GoogleTranslator();

     namee =  await  translator.translate(name, to: 'en', from: 'ar').toString();
    
    
  }
  
}

class MainNameContainer extends StatelessWidget {
  const MainNameContainer({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
        child: child);
  }
}

class Translator1 extends StatefulWidget {
  const Translator1({Key? key}) : super(key: key);

  @override
  State<Translator1> createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator1> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 5),
      child: Text(
        '',
        style:  TextStyle(
            color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
