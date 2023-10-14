import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/view_models/app_view_model.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:(context,viewModel,child){
      return Container(
        decoration: BoxDecoration(
          color: viewModel.clevel2,
          borderRadius: const BorderRadius.vertical(top:Radius.circular(30))
        ),
        child: ListView.separated(
            separatorBuilder: (context,index){
              return const SizedBox(height: 15,);
            }
            ,
            itemCount: viewModel.numTasks,
            itemBuilder: (context,index){
              return Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              );
            },
        ),

      );
    });
  }
}
