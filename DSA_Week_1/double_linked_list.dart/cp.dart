class Node<T> {
  T data;
  Node<T>? next;
  Node<T>? prev;
  Node(this.data);
}

class DoubleLinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  void append(T data) {
    Node<T> newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void delete(T deleteData) {
    if (head == null) {
      print('delete data not found');
      return;
    }
    if (head?.data == deleteData) {
      head = head?.next;
      if (head != null) {
        head?.prev = null;
      } else {
        tail = null; // List is now empty
      }
      return;
    }
    if (tail?.data == deleteData) {
      tail = tail?.prev;
      if (tail != null) {
        tail?.next = null;
      } else {
        head = null; // List is now empty
      }
      return;
    }
    Node<T>? temp = head;
    while (temp != null) {
      if (temp.data == deleteData) {
        temp.prev?.next = temp.next;
        temp.next?.prev = temp.prev;
        return;
      }
      temp = temp.next;
    }
    print('Delete data not found');
  }

  void isertAfter(T nextTo, T data) {
    Node<T> putdata = Node(data);
    if (head != null) {
      if (head?.data == nextTo) {
        head?.next?.prev = putdata;
        putdata.next = head?.next;
        putdata.prev = head;
        head?.next = putdata;
        return;
      }
    } else {
      tail = null;
      print("its a empty list");
      return;
    }
    if (tail?.data == nextTo) {
      tail?.next = putdata;
      putdata.prev = tail;
      tail = putdata;
      tail?.next = null;
      return;
    }
    Node<T>? temp = head;
    while (temp != null) {
      if (temp.data == nextTo) {
        temp.next?.prev = putdata;
        putdata.next = temp.next;
        putdata.prev = temp;
        temp.next = putdata;
        return;
      }
      temp = temp.next;
    }
    print('insert data not found');
  }

  void isertbefore(T beforeTo, T data) {
    Node<T> putdata = Node(data);
    if (head != null) {
      if (head?.data == beforeTo) {
        head?.prev = putdata;
        putdata.next = head;
        head = putdata;
        head?.prev = null;
        return;
      }
    } else {
      tail = null;
      print("its a empty list");
      return;
    }
    if (tail?.data == beforeTo) {
      tail?.prev?.next = putdata;
      putdata.prev = tail?.prev;
      putdata.next = tail;
      tail?.prev = putdata;

      return;
    }
    Node<T>? temp = head;
    while (temp != null) {
      if (temp.data == beforeTo) {
        temp.prev?.next = putdata;
        putdata.prev = temp.prev;
        putdata.next = temp;
        temp.prev = putdata;
        return;
      }
      temp = temp.next;
    }
    print('insert data not found');
  }

  void display() {
    Node<T>? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse() {
    Node<T>? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void swapDate() {
    // Update tail before reversing
    Node<T>? temp = head;
    while (temp?.next != null) {
      temp = temp?.next;
    }
    tail = temp;

    // Reversing the linked list
    Node<T>? current = head;
    Node<T>? prev = null;
    Node<T>? nnext;
    while (current != null) {
      nnext = current.next;
      current.next = prev;
      prev = current;
      current = nnext;
    }
    head = prev;

    // Printing the reversed linked list
    temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  var sample = DoubleLinkedList();
  sample.append(1);
  sample.append(2);
  sample.append(3);
  sample.append(4);
  sample.append(5);
//  sample.swapDate();
  //sample.delete(3);
  // sample.isertAfter(4, 111);
  sample.isertbefore(3, 8);
  sample.display();
// sample.displayReverse()
}