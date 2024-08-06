// class Node{
//   int? data;
//   Node? next;

//   Node(this.data);
// }

// class LinkedListN{
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

//   insertAfter(int after, int data){
//     Node newNode = Node(data);
//     Node? temp = head;

//     while(temp != null && temp.data != after){
//       temp = temp.next;
//     }

//     if(temp == null){
//       return;
//     }

//     if(temp == tail){
//       tail?.next =newNode;
//       tail = newNode;
//       return;
//     }

//     newNode.next = temp.next;
//     temp.next = newNode;
//   }

//   insertBefore(int before,int data){
//     Node newNode = Node(data);
//     Node? temp = head;

//     if(head == null){
//       print('Empty');
//       return;
//     }

//     if(head?.data == before){
//       newNode.next = head;
//       head = newNode;
//       return;

//     }

//     while(temp?.next != null){
//       if(temp?.next?.data == before){
//         newNode.next = temp?.next;
//         temp?.next = newNode;
//         break;
//       }
//       temp =temp?.next;
//     }
//   }

//   searchNode(int data){
//     Node? temp = head;

//     while(temp != null){
//       if(temp.data == data){
//         return print('Data Found ${temp.data}');
//       }
//       temp = temp.next;
//     }
//     return print('Not Found');
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
//   LinkedListN list = LinkedListN();

//   list.addNode(1);
//   list.addNode(2);
//   list.addNode(3);
//   list.deleteNode(2);
//   list.insertBefore(3, 6);
//   list.insertBefore(3, 0);
//   list.searchNode(2);
//   list.displayNode();
//   list.middNode();
// }



class Node{
  int? data;
  Node? prev;
  Node? next;

  Node(this.data);
}

class DoublyLinkedL{
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

  addAtStart(int data){
    Node newNode = Node(data);

    if(head == null){
      head = newNode;
    }else{
      head?.prev = newNode;
      newNode.next = head;
    }
    head = newNode;
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

  // insertAfter(int after, int data){
  //   Node newNode = Node(data);
  //   Node? temp = head;

  //   while(temp != null){
  //     if(temp.data == after){
  //       newNode.next = temp.next;
  //       temp.next = newNode;

  //       if(temp.next == null){
  //         tail = newNode;
  //       }else{
  //         temp.next?.prev = newNode;
  //       }
  //       temp.next = newNode;
  //       return;
  //     }
  //     temp = temp.next;
  //   }
  // }

  // insertBefore(int before, int data){
  //   Node newNode = Node(data);
  //   Node? temp = head;

  //   while(temp != null){
  //     if(temp.data == before){
  //       newNode.next = temp;
  //       newNode.prev = temp.prev;

  //       if(temp.prev == null){
  //         head = newNode;
  //       }else{
  //         temp.prev?.next = newNode;
  //       }
  //       temp.prev = newNode;
  //       return;
  //     }
  //     temp = temp.next;
  //   }
  // }

  insertAfter(int after, int data){
    Node newNode = Node(data);
    Node? temp = head;

    while(temp != null){
      if(temp.data == after){
        newNode.next = temp.next;
        temp.next = newNode;

        if(temp.next == null){
          tail = newNode;
        }else{
          temp.next?.prev = newNode;
        }
        temp.next = newNode;
      }
      temp = temp.next;
    }
  }

  insertBefore(int before, int data){
    Node newNode = Node(data);
    Node? temp = head;

    while(temp != null){
      if(temp.data == before){
        newNode.next = temp;
        newNode.prev = temp.prev;

        if(temp.prev == null){
          head = newNode;
        }else{
          temp.prev?.next = newNode;
        }
        temp.prev = newNode;
      }
      temp =temp.next;
    }
  }

  displayNode(){
    Node? temp = head;
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }

  displayNodeRev(){
    Node? temp = tail;

    while(temp != null){
      print(temp.data);
      temp = temp.prev;
    }
  }
}

void main(){
  DoublyLinkedL list = DoublyLinkedL();

  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  // list.deleteNode(1);
  // list.insertAfter(3, 4);
  list.insertBefore(3, 0);
  // list.addAtStart(1);
  list.displayNode();
  
}