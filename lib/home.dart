import 'package:flutter/material.dart';
import 'package:login_screen/utils/constants.dart';
import 'package:login_screen/utils/date_utils.dart';
import 'task/add_new_task.dart';
import 'todo_card.dart';
//import 'utils/constants.dart';
//import 'dart:js_interop';


class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> todo = ["Study lessons", "Go Gym", "Tidy Up The Room"];
    List<String> completed = ["Take out trash", "Wake up early"];
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    String formattedDate = getFormattedDate() ; //for today's date
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: fColor,
          body: Column(
            children: [
              //Header
              Container(
                width: deviceWidth,
                height: deviceHeight / 5,
                //tüm ekranlarda kaçta kaçı alan kaplaması gerektiğini gösteren kod
                color: eColor,
                child:  Column(
                  children: [
                    Padding(//Today's date
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        formattedDate,
                        style: const TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: bColor,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("To Do List",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              color: bColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              //Top Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: todo.length,
                      itemBuilder: (context, index) {
                        return ToDoCard(title: todo[index]);
                      },
                    ),
                  ),
                ),
              ),
              //Completed Text

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: bColor,
                    ),
                  ),
                ),
              ),
              //Bottom Column

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: completed.length,
                      itemBuilder: (context, index) {
                        return ToDoCard(title: completed[index]);
                      },
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddNewTask(),
                  ));
                },
                child: const Text("Add New Task",
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    color: bColor
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
