import 'package:flutter/material.dart';
import 'package:login_screen/utils/constants.dart';
//import '../date_utils.dart';
class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        backgroundColor: bColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: fColor,
                width: deviceWidth,
                height: deviceHeight / 12,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                        child: Text(
                          "Add New Task",
                          style: TextStyle(
                              color: bColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: 'Times New Roman',
                          ),
                          textAlign: TextAlign.left,
                        )
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                    "Task Title",
                    style: TextStyle(
                      color: eColor,
                      fontFamily: 'Times New Roman',
                    )),
              ), //Task Title

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 41,vertical:16),
                child: TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: eColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                        "Category",
                      style: TextStyle(
                        color: eColor,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 299),
                            content: Text("Category selected"),
                          ),
                        );
                      },

                      child: Image.asset("assets/Category1.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 299),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("assets/Category2.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(milliseconds: 299),
                            content: Text("Category selected"),
                          ),
                        );
                      },
                      child: Image.asset("assets/Category3.png"),
                    ),
                  ],
                ),
              ), //Category

              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                              color: eColor,
                              fontFamily: 'Times New Roman',
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                  decoration: InputDecoration(
                                      filled: true, fillColor: eColor))),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              "Time",
                        style: TextStyle(
                          color: eColor,
                          fontFamily: 'Times New Roman',
                        ),
                        ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: eColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),//Date

              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Notes",
                  style: TextStyle(
                    color: eColor,
                    fontFamily: 'Times New Roman',
                  ),
                ),// Note
              ),

              const SizedBox(
                height: 301,
                child: TextField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                        filled: true, fillColor: eColor, isDense: true)),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text("Save",
                  style: TextStyle(
                    color: bColor,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ),//save button
            ],
          ),
        ),
      ),
    );
  }
}
