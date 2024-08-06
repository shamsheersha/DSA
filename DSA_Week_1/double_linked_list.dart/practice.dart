class Node{
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyL{
  Node? head;
  Node? tail;

  addNode(int data){
    Node newNode = Node(data);

    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  displayNode(){
    Node? temp = head;
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }
  displayRev(){
    Node? temp = tail;

    while(temp != null){
      print(temp.data);
      temp = temp.prev;
    }
  }

  deleteNode(int data){
    Node? temp = head;

    while(temp != null){
      if(temp.data == data){
        if(temp.prev != null){
          temp.prev?.next = temp.next;
        }else{
          head = temp.next;
        }
        if(temp.next != null){
        temp.next?.prev = temp.prev;
      }else{
        tail = temp.prev;
      }
      break;
      }
      

      temp = temp.next;
    }
  }

  insertNode(int nextTo,int data){
    
  }
}

void main(){
  DoublyL list = DoublyL();

  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.displayNode();
  print('dd');
  list.deleteNode(3);
  list.displayNode();
  // list.displayRev();
}