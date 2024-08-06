void main() {
  Queue q = Queue();
  q.enque(2);
  q.enque(3);
  q.enque(4);
  q.enque(5);
  q.deque();
  q.display();
  // q.deque();
  // q.display(); // Added to show the state of the queue after deque
}


class Node{
  int? data;
  Node? next;
  
  Node(this.data);
}

class Queue{
  Node? front;
  Node? rear;

  enque(int data){
    Node newNode = Node(data);
    if(rear == null){
      rear = front = newNode;
    }else{
      rear?.next = newNode;
      rear = newNode;
    }
  }
  
  deque(){
    if(front == null){
      return;
    }
    front = front?.next;
    if(front == null){
      rear = null;
    }
  }

  display(){
    Node? temp = front;
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }
}

