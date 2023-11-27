import 'package:hive/hive.dart';

class TodoDataBase {
  List toDoList = [];

  // Reference our box
  final _myBox = Hive.box('mybox');

  // Run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Do Exercose', false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
