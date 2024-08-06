// class Node{
//   int? data;
//   Node? next;

//   Node(this.data);
// }

// class LinkedListp{
//   Node? head;
//   Node? tail;

//   addNode(int data){
//     Node newNode = Node(data);

//     if(head == null){
//       head = newNode;
//     }else{
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   deleteNode(int data){
//     Node? temp = head;
//     Node? prev;

//     if(temp != null && temp.data == data){
//       head = temp.next;
//     }

//     while(temp != null && temp.data != data){
//       prev = temp;
//       temp = temp.next;
//     }

//     if(temp == null){
//       return;
//     }

//     prev?.next = temp.next;

//     if(prev?.next == null){
//       tail = prev;
//     }
//   }

//   insertAfter(int nextTo, int data){
//     Node newNode = Node(data);
//     Node? temp = head;

//     while(temp != null && temp.data != nextTo){
//       temp = temp.next;
//     }

//     if(temp == null){
//       return;
//     }

//     if(temp == tail){
//       tail?.next = newNode;
//       tail = newNode;
//       return;
//     }

//     newNode.next = temp.next;
//     temp.next = newNode;
//   }

//   insertBefor(int before, int data){
//     Node newNode = Node(data);
//     Node? temp = head;

//     if(head == null){
//       return print('No List');
//     }

//     if(head?.data == before){
//       newNode.next = head;
//       head = newNode;
//       return;
//     }

//     while(temp != null){
//       if(temp.next?.data == before){
//         newNode.next = temp.next;
//         temp.next =newNode;
//       }
//     }
//     temp = temp?.next;
//   }

//   searchNode(int data){
//     Node? temp = head;
    
//     while(temp?.next != null){
//       if(temp?.data == data){
//         return print('Found ${temp?.data}');
//       }
//       temp = temp?.next;
//     }
//     return print('NotFound');
//   }

//   middNode(){
//     Node? fast = head;
//     Node? slow = head;

//     while(fast?.next != null){
//       fast = fast?.next?.next;
//       slow = slow?.next;
//     }
//     print(slow?.data);
//   }

//   displayNode(){
//     Node? temp = head;
//     while(temp != null){
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main(){
//   LinkedListp list = LinkedListp();

//   list.addNode(1);
//   list.addNode(2);
//   list.addNode(3);
//   // list.deleteNode(3);
//   // list.insertAfter(3, 4);
//   // list.insertBefor(1, 0);
//   // list.displayNode();
//   list.searchNode(2);
//   list.middNode();
// }



class Node{
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLInked{
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

  insertNodeAfter(int nextTo, int data){
    Node newNode = Node(data);
    Node? temp = head;

    while(temp != null){
      if(temp.data == nextTo){
        newNode.prev = temp;
        newNode.next = temp.next;

        if(temp == tail){
          tail = newNode;
        }
      }
    }
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
}

void main(){
  DoublyLInked list = DoublyLInked();
  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.deleteNode(3);
  list.displayNode();
  // list.displayRev();
}