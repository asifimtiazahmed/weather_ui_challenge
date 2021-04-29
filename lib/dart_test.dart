import 'dart:math';
import 'dart:html';


//TODO List
InputElement task;
UListElement list;

main(){
  task = querySelector('#task');
  list = querySelector('#list');
  task.onChange.listen((e) => addItem());
}
void addItem(){
  var newTask = LIElement();
  newTask.text = task.value;
  task.value = '';
  list.children.add(newTask);
}