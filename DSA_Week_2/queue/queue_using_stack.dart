class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;
  bool get isEmpty => top == null;
  push(int data) {
    Node newnode = Node(data);

    newnode.next = top;
    top = newnode;
  }

   pop() {
    if (isEmpty) return null;
    var data = top!.data;
    top = top?.next;
    return data;
  }
}

class QueueUsingStack {
  Stack stack1 = Stack();
  Stack stack2 = Stack();

  enqueue(int data) {
    stack1.push(data);
  }

   dequeue() {
    if (isEmpty) return null;
    if (stack2.isEmpty) {
      while (!stack1.isEmpty) {
        stack2.push(stack1.pop()!);
      }
    }
    return stack2.pop();
  }

  bool get isEmpty => stack1.isEmpty && stack2.isEmpty;
}

void main() {
  QueueUsingStack queueUsingStack = QueueUsingStack();
  queueUsingStack.enqueue(1);
  queueUsingStack.enqueue(2);
  queueUsingStack.enqueue(3);
  print(queueUsingStack.dequeue());
  print(queueUsingStack.dequeue());
  print(queueUsingStack.dequeue());
}