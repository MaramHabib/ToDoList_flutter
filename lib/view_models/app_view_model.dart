
import '../models/task_model.dart';
import '../models/user_model.dart';
import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier{

  List<Task> tasks =<Task>[];
  User user= User("Maram Ashraf");

  Color clevel1 = Colors.grey.shade50;
  Color clevel2 = Colors.grey.shade200;
  Color clevel3 = Colors.grey.shade800;
  Color clevel4 = Colors.grey.shade900;

  int get numTasks => tasks.length;
  void addTask(Task newTask){
    tasks.add(newTask);
    notifyListeners();
  }


  //------------  get & set task value  ------------------------------
  bool getTaskValue(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  void setTaskValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  //----------------remove task -------------------------

  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }
}

