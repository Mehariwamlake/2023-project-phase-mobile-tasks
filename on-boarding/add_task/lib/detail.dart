import 'package:add_task/utlity.dart';
import 'package:flutter/material.dart';

class TaskDetailPage extends StatefulWidget {
  const TaskDetailPage({super.key});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    final Task? task = ModalRoute.of(context)?.settings.arguments as Task?;

    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Task Detail',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.orange,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(),
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('image/shopping-list.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child:  Text(
              "Title",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
                  ),
                  Container(
                    width: screen.width - 20,
                    margin: EdgeInsets.all(screen.width / 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(241, 238, 238, 1),
                    ),
                   child:  Text(task!=null? task.description:"Title"
                 ),),
                ],
              ),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                width: screen.width - 30,
                margin: EdgeInsets.all(screen.width / 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 238, 238, 1),
                ),
               child:  Text(task!=null?task.date:"descrip"),
            ),
              const Text(
                'Deadline',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                width: screen.width - 30,
                margin: EdgeInsets.all(screen.width / 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 238, 238, 1),
                ),
               child:  Text(task!=null?task.date:"date"),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
