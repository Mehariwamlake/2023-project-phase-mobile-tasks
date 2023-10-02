import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:add_task/utlity.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _discController = TextEditingController();


  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(20000),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        final lastDate = DateFormat.yMMMd().format(picked);
        _dateController.text = lastDate;
      });
    }
  }

  
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
               child: Expanded(
                    child: TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Task name',
                  ),
                  ),
              ),),
              Container(
                width: screen.width - 20,
                margin: const EdgeInsets.only(
                    bottom: 20, left: 10, right: 10, top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: cardDecoration,
                child: Row(
                   children: [
                
                    Expanded(
                        child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Date',
                      ),
                      controller: _dateController,
                      onChanged: (value) => {},
                    )),

                    GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: const Icon(
                         Icons.calendar_month,
                      size: 20,
                      color: Color.fromARGB(255, 0, 140, 255),
                    ),
                    ),
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
             Container(
                decoration: cardDecoration,
                width: screen.width - 20,
                margin: const EdgeInsets.only(
                    bottom: 20, left: 10, right: 10, top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Expanded(
                    child: TextField(
                      maxLines: 4,
                      
                  controller: _discController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Description',
                  ),
                )),
              ),
              SizedBox(
                height: screen.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      
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
                      onPressed: () {
                       
                          setState(() {
                            Task t = Task(
                                _dateController.text,
                                _titleController.text,
                                 getRandomColor(),
                                description:  _discController.text);
                            tasks.add(t);
                          });
                         
                          Navigator.pushNamed(context, '/home');
                        },
                      
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
