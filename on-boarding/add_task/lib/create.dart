import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    BoxDecoration cardDecoration = const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 225, 223, 223),
              offset: Offset(1, 0.2),
              blurRadius: 5)
        ]);
    TextStyle style = const TextStyle(
        fontWeight: FontWeight.bold, color: Color.fromRGBO(238, 111, 87, 1));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.orange,
          ),
          title: const Text(
            'Create new Task',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.black,
            )
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Main task name',
                  style: style,
                ),
              ),
              content(screen, cardDecoration, "UI/UX App Design"),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Due Date',
                  style: style,
                ),
              ),
              Container(
                width: screen.width - 20,
                margin: const EdgeInsets.only(
                    bottom: 20, left: 10, right: 10, top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: cardDecoration,
                child: Row(
                  children: const [
                    Text("April 29, 2023 12:30 AM",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    Icon(
                      Icons.calendar_month,
                      size: 20,
                      color: Color.fromRGBO(238, 111, 87, 1),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Description',
                  style: style,
                ),
              ),
              content(screen, cardDecoration,
                  "First I have to animate the logo and later prototyping my design. It's very important"),
              SizedBox(
                height: screen.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      //Rounded shaped button
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(5),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(238, 111, 87, 1))),
                      onPressed: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                        ),
                        child: const Text(
                          "Add Task",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }

  Container content(Size screen, BoxDecoration cardDecoration, String s) {
    return Container(
      width: screen.width - 20,
      margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: cardDecoration,
      child: Text(
        s,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
