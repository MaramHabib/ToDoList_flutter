import 'package:flutter/material.dart';

import 'package:todolist/views/add_task_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        bottom: false,
        child: Column(children: [
          //header view
          Expanded(flex:1,child: Container(color:Colors.red),),
          //task view
          Expanded(flex:1,child: Container(color:Colors.green),),
          //task list view
          Expanded(flex:7,child: Container(color:Colors.blue),),

        ],),
      ),
        floatingActionButton:const AddTaskView(),

    );

  }
}

