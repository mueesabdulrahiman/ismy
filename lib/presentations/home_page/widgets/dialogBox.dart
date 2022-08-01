import 'package:flutter/material.dart';


// names dialog box

showDialogBox(BuildContext context, ListTile Function({required  String label, required String subLabel}) dialogBoxTextTile){
  return showDialog(
                      context: context,
                      builder: (ctx) {
                        return SimpleDialog(
                          contentPadding: const EdgeInsets.all(10),
                          children: [
                            dialogBoxTextTile(
                                label: 'Hamza ibn Abdul Muttalib',
                                subLabel: '- Uncle of the Prophet Muhammad'),
                            Divider(
                              color: Colors.grey[400],
                              thickness: 2,
                            ),
                            dialogBoxTextTile(
                                label: 'Hamza al-Kufi',
                                subLabel:
                                    '- 1 of 7 transmitters of the Qur\'anic modes'),
                            Divider(
                              color: Colors.grey[400],
                              thickness: 2,
                            ),
                            dialogBoxTextTile(
                                label: 'Hamza ibn Abdul Muttalib',
                                subLabel: '- Uncle of the Prophet Mohammad'),
                            Divider(
                              color: Colors.grey[400],
                              thickness: 2,
                            ),
                            dialogBoxTextTile(
                                label: 'Hamza al-Kufi',
                                subLabel:
                                    '- 1 of 7 transmitters of the Qur\'anic modes'),
                            // Divider(
                            //   color: Colors.grey[400],
                            //   thickness: 2,
                            // ),
                          ],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        );
                      });
}

ListTile dialogBoxTextTile(
      {required String label, required String subLabel}) {
    return ListTile(
      title: Text(
        label,
        style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subLabel,
        style: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
      ),
    );
  }



// notes dialog box

Future<dynamic> notesDialogBox(BuildContext context) {
    return showDialog(
          context: context,
          builder: (ctx) {
            return SimpleDialog(
              title: const Text(
                'Make a note...',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              children: [
                const Divider(
                  thickness: 2,
                ),
                Text(
                  'This name is good but might not match the surname.\n\n\n\n\n',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                ),
               const  Divider(thickness: 2,),
               Align(
                alignment: Alignment.bottomRight,
                child: TextButton(child: const Text('save'),style: ButtonStyle(shape: MaterialStateProperty.all<OutlinedBorder>( RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: const  BorderSide(color: Colors.blue,)))),
                onPressed: (){},),
               ),
              ],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            );
          });
  }