import 'package:flutter/material.dart';
import 'package:login_screen/utils/constants.dart';

class ToDoCard extends StatefulWidget {
  const ToDoCard({super.key, required this.title});
  final String title;

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: dColor,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.notes_outlined,
              size: 50,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Times New Roman',
              ),
            ), //The list TodoLIST in the page after login
            Checkbox(
                value: isChecked,
                onChanged: (val) => {
                  setState(() {
                    isChecked = val!;
                  })
                })
          ],
        ),
      ),
    );
  }
}
