class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;
  bool get isEmpty => front == null;
  enqueue(int data) {
    Node newNode = Node(data);
    if (isEmpty) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

   dequeue() {
    if (isEmpty) return null;
    int? data = front?.data;
    front = front?.next;
    return data;
  }


}

class StackUsingQueue {
  Queue queue1 = Queue();
  Queue queue2 = Queue();
  Node? top;

  push(int data) {
    queue1.enqueue(data);
    if (!queue2.isEmpty) {
      while (!queue2.isEmpty) {
        queue1.enqueue(queue2.dequeue());
      }
    }
    var temp = queue1;
    queue1 = queue2;
    queue2 = temp;
  }

   pop() {
    if (queue2.isEmpty) return null;
    return queue2.dequeue();
  }


}

void main() {
  StackUsingQueue stackUsingQueue = StackUsingQueue();
  stackUsingQueue.push(1);
  stackUsingQueue.push(2);
  stackUsingQueue.push(3);
  print(stackUsingQueue.pop());
  print(stackUsingQueue.pop());
  print(stackUsingQueue.pop());

}