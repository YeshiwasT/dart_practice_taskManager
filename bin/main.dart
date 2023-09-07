import 'package:taskmanager/taskmanager.dart' as taskmanager;
import 'package:taskmanager/tasks.dart';

void main(List<String> arguments) {
  print('Hello world: ${taskmanager.calculate()}!');
var task1=Task(
id:"1",
Title: "A2SV session",
Description: "Learning DSA",
dueDate: "2/12/2023",
Status: STATUS.PENDING,
);
var task2=Task(
id:"2",
Title: "Working",
Description: "GYM",
dueDate: "2/12/2023",
Status: STATUS.COMPLETED,
);
var editedTask=Task(
id:"2",
Title: "Work out ",
Description: "GYM Aerobics",
dueDate: "2/12/2023",
Status: STATUS.PENDING,
);
 var task=TaskManager();
 task.addTask(task1);
task.addTask(task2);
task.viewTask();
task.editTask("2", editedTask);
task.viewTask();
task.deleteTask("2");
task.viewTask();
}
