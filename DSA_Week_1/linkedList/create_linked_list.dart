class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }
  addAtStart(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      newNode.next = head;
      head = newNode;
    }
  }
  printNOde() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  deleteNode(int data) {
    Node? temp = head;
    Node? prev;
    if (temp != null && temp.data == data) {
      head = temp.next;

      if (head == null) {
        tail = null;
      }
      return;
    }

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    prev?.next = temp.next;

    if (prev?.next == null) {
      tail = prev;
    }
  }

  insertNode(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
      return;
    }

    newNode.next = temp.next;
    temp.next = newNode;
  }

  //! inserting a node before a node
  void insertNodeBefore(int before, int data) {
    Node newNode = Node(data);
    Node? temp = head;

    if (head == null) {
      print('linked list is empty');
      return;
    }

    if (head!.data == before) {
      newNode.next = head;
      head = newNode;
      return;
    }

    while (temp!.next != null) {
      if (temp.next!.data == before) {
        newNode.next = temp.next;
        temp.next = newNode;
        break;
      }
      temp = temp.next;
    }
  }

  searchNode(int data) {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == data) {
        return print(temp.data);
      }
      temp = temp.next;
    }
    return print('Not Found');
  }

  middNode() {
    Node? fast = head;
    Node? slow = head;

    while (fast?.next != null) {
      fast = fast?.next?.next;
      slow = slow?.next;
    }
    print(slow?.data);
  }
}

void main() {
  LinkedList list = LinkedList();

  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  // list.printNOde();

  // list.deleteNode(3);
  print('After Deleting');

  print('After midd');
  list.addAtStart(2);
  // list.insertNode(3, 6);
  list.printNOde();
  // list.middNode();
}
