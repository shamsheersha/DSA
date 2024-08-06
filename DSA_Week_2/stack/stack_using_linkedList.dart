// class Node {
//   int? data;
//   Node? next;

//   Node({this.data});
// }

// class Stack {
//   Node? top;

//   // Pushing a node onto the stack
//    push(int data) {
//     Node newNode = Node(data: data);
    
//     if (top == null) {
//       top = newNode;
//     } else {
//       newNode.next = top;
//       top = newNode;
//     }
//   }

//   // Removing a node from the stack
//    pop() {
//     if (top == null) {
//       return;
//     }
//     top = top?.next;
//   }

//   // Displaying the stack
//    display() {
//     Node? current = top;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }
//     void sort() {
//     Stack sortedStack = Stack();
//     while (top != null) {
//       int? temp = pop();
//       while (sortedStack.top != null && sortedStack.top!.data! > temp!) {
//         push(sortedStack.pop()!);
//       }
//       sortedStack.push(temp!);
//     }
//     top = sortedStack.top; // Assign sorted stack back to the original stack
//   }
// }



class Node{
  int? data;
  Node? next;

  Node(this.data);
}

class Stack{
  Node? top;

  push(int data){
    Node newNode = Node(data);

    if(top == null){
      top = newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }
  }

  pop(){
    if(top == null){
      return;
    }
    top?.next = top;
  }

  display(){
    Node? temp = top;
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }

  void deleteMiddle() {
    if (top == null) {
      return;
    }
    
    List<int> tempStack = [];
    Node? temp = top;

    // Step 1: Count elements
    int count = 0;
    while (temp != null) {
      count++;
      temp = temp.next;
    }

    // Step 2: Calculate middle index
    int middleIndex = count ~/ 2;

    // Step 3: Pop elements until the middle
    temp = top;
    for (int i = 0; i < middleIndex; i++) {
      tempStack.add(temp!.data!);
      temp = temp.next;
    }

    // Remove the middle element (do not add it to tempStack)
    temp = temp?.next; // Skip the middle element

    // Add remaining elements to tempStack
    while (temp != null) {
      tempStack.add(temp.data!);
      temp = temp.next;
    }

    // Step 4: Rebuild the stack with remaining elements
    top = null;
    for (int i = tempStack.length - 1; i >= 0; i--) {
      push(tempStack[i]);
    }
  }

}
void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  // stack.display();
  // stack.pop();
  stack.deleteMiddle();
  stack.display(); // Added to show the state of the stack after pop
}