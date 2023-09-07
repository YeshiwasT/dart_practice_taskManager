class TaskManager{


List<Task> tasks= [];

void addTask(Task newTask) { 
  tasks.add(newTask);
}
List<Task> viewTask() { 

return tasks;
}
void editTask(String id,Task editedTask) { 
  for (var i = 0; i < tasks.length; i++) {
    if (tasks[i].id==id) {
      tasks.removeAt(i);
      tasks.insert(i,editedTask);
      break;
    }
    
  }
}
void deleteTask(String id) { 
  for (var i = 0; i < tasks.length; i++) {
    if (tasks[i].id==id) {
      tasks.removeAt(i);
    }
    
  }
}

}
class Task{
    const Task({
    required this.id,
    required this.Title,
    required this.Description,
    required this.dueDate,
    required this.Status,
  });
 final String id;
 final String Title;
 final String Description;
 final String dueDate;
final STATUS Status;
}
enum STATUS{
  COMPLETED,
  PENDING
}