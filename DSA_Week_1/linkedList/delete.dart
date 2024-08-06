class Node {
  int? data;
  Node? link;
  Node(this.data, {this.link});
}

class LinkedList {
  Node? head;
  LinkedList() {
    head = null;
  }
  addafter(List<int> dataList) {
    for (var data in dataList) {
      Node? newNode = Node(data);
      if (head == null) {
        head = newNode;
      } else {
        Node? currentNode = head;
        while (currentNode?.link != null) {
          currentNode = currentNode?.link;
        }
        currentNode?.link = newNode;
      }
    }
  }

  deleteNode(Node? value) {
    if (head == null) {
      print('empty list');
      return;
    }
    Node? currentNode = head;
    Node? prev = null;
    while (currentNode != null) {
      if (currentNode == value) {
        if (prev == null) {
          head = currentNode.link;
        } else {
          prev.link = currentNode.link;
        }
        return;
      } else {
        prev = currentNode;
        currentNode = currentNode.link;
      }
    }
    print("nothing matches to delete");
  }

  Node? lastElement() {
    Node? node = head;
    Node? prev = null;
    if (head != null && prev == null) {
      return node;
    }
  }

  Node? findLast() {
    Node? node = head;
    while (node?.link != null) {
      node = node?.link;
    }
    return node;
  }

  Node? findMiddle() {
    Node? temp1 = head;
    Node? temp2 = head;
    while (temp2 != null && temp2.link != null) {
      temp1 = temp1?.link;
      temp2 = temp2.link?.link;
    }
    return temp1;
  }

  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.link;
    }
  }

  reverseNode() {
    Node? current = head;
    Node? prev = null;
    while (current != null) {
      Node? temp = current.link;
      current.link = prev;
      prev = current;
      current = temp;
    }
    head = prev;
  }
}

deleteNode() {}
void main() {
  LinkedList linkedList = LinkedList();
  linkedList.addafter([0, 1, 2, 3,5]);
  linkedList.printList();
  print('*******');
  Node? lastElement = linkedList.findLast();
  Node? value = linkedList.findMiddle();
  //linkedList.findMiddle()
  Node? firstElement = linkedList.lastElement();
   linkedList.deleteNode(value);
 // linkedList.reverseNode();
  linkedList.printList();
}