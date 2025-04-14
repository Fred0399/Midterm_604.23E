class Task {
  String name;
  String description;
  String state = 'pending'; 

Task(this.name, this.description);

void updateState(String newState) {
    if (state != newState) {
      print('Changing "$name" from "$state" to "$newState"');
      state = newState;
    } else {
      print('"$name" is already "$state"');
    }
  }
void complete() {
    updateState('completed');
  }
}
void main() {
  Task task = Task('Buy groceries', 'Milk, eggs, and bread');

  task.updateState('in progress');
  task.complete();
  task.complete(); 
}
