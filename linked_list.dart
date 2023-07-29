void main() {
  Node head = Node(Task(1,'head of linked list'));
  /*Node node2 = Node(Task(2,'node2 of linked list'));
  Node node3 = Node(Task(3,'node3 of linked list'));
  head.nextNode = node2;
  node2.nextNode = node3;
  */
  insertTaskToLinkedList(head, Task(2,'node2'));
  insertTaskToLinkedList(head, Task(3,'node3'));
  insertTaskToLinkedList(head, Task(4,'node4'));

  printDataInLinkedList(head);
//  print(head.nextNode!.task.text);
// it will print node 3 of linked list
//           node2     node3     task in node3 then the text in that task
// print(head.nextNode!.task.text);
}

void printDataInLinkedList(Node head) {
  Node? pointer = head;
  // while (pointer.nextNode != null) this doesn't print the last element so i tired to do it with 
  // do while loops but forget that executes the first loop then check the condition
  // which doesn't relate to the last loop we are searching for solving here
  while (pointer != null) {
    print(pointer.task.text);
    pointer = pointer.nextNode;
  }
}

void insertTaskToLinkedList(Node head, Task newTask) {
  Node pointer = head;

  while (pointer.nextNode != null) {
    pointer = pointer.nextNode!;
  }
  pointer.nextNode = Node(newTask);
}

class Task {
  int id;
  String text;

  Task(this.id, this.text);
}

class Node {
  // refers to the task place in memory
  Task task;
  // refers to the next node
  Node? nextNode; // nextNode can be optional as it may be null 

  Node(this.task, [this.nextNode]);
}