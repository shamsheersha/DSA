class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    Node addNode = Node(data);
    if (head == null) {
      head = addNode;
    } else {
      tail?.next = addNode;
      addNode.prev = tail;
    }
    tail = addNode;
  }

  printNode() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  printNodeReverse() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  deleteNode(int data) {
    Node? temp = head;

    while (temp != null) {
      if (temp.data == data) {
        if (temp.prev != null) {
          temp.prev?.next = temp.next;
        } else {
          head = temp.next;
        }
        if (temp.next != null) {
          temp.next?.prev = temp.prev;
        } else {
          tail = temp.prev;
        }
        break;
      }
      temp = temp.next;
    }
  }

  void insertNode(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;


    while (temp != null) {
      if (temp.data == nextTo) {

        newNode.prev = temp;
        newNode.next = temp.next;

        if (temp == tail) {

          tail = newNode;
        } else {
          temp.next?.prev = newNode;
        }

        temp.next = newNode;
        return;
      }
      temp = temp.next;
    }


    print("Node with data $nextTo not found.");
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
  list.addNode(4);
  // list.printNode();
  print('af');
  // list.printNodeReverse();
  // list.middNode();
  list.insertNode(1, 5);
  list.printNode();
}
