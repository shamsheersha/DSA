import 'dart:math' as math;

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinarySearchTree<T> {
  Node? root;

  void insert(int data) {
    Node newNode = Node(data);
    Node? current = root;
    if (current == null) {
      root = newNode;
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = newNode;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = newNode;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  bool contain(int data) {
    if (root == null) return false;

    Node? current = root;
    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else if (data > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }

  delete(int data) {
    deleteRec(root, data);
  }

  deleteRec(Node? node, int data) {
    if (node == null) return null;
    if (data < node.data) {
      node.left = deleteRec(node.left, data);
    } else if (data > node.data) {
      node.right = deleteRec(node.right, data);
    } else {
      if (node.left == null && node.right == null) {
        return null;
      }
      if (node.right == null) {
        return node.left;
      } else if (node.left == null) {
        return node.right;
      }
      int? minValueData = findMinValueNode(node.right);
      node.data = minValueData!;
      node.right = deleteRec(node.right, minValueData);

    }

    return node;
  }

  findMinValueNode(Node? node) {
    while (node?.left != null) {
      node = node!.left;
    }
    return node!.data;
  }

  checkBalance(Node? node) {
    if (node == null) return 0;

    int leftHeight = checkBalance(node.left);
    if (leftHeight == -1) return -1;

    int rightHeight = checkBalance(node.right);
    if (rightHeight == -1) return -1;

    if ((leftHeight - rightHeight).abs() > 1) return -1;

    return 1 + math.max(leftHeight, rightHeight);
  }

  fintTargedepth(int target) {
    return _fintTargedepth(root, target);
  }

  _fintTargedepth(Node? node, int target) {
    if(node == null) return null;
    int count = 0;
    if (node.right == null && node.left == null) return 0;
    while (node != null) {
      if (target < node.data) {
        node = node.left;
        count++;
      } else if (target > node.data) {
        node = node.right;
        count++;
      } else {
        count++;
        return count;
      }
    }
    return 0;
  }

  bool isBST() {
    List<int> values = [];
    _inOrderTraversal(root, values);

    for (int i = 1; i < values.length; i++) {
      if (values[i] <= values[i - 1]) {
        return false; // Not in ascending order
      }
    }
    return true; // In ascending order
  }

  void _inOrderTraversal(Node? node, List<int> values) {
    if (node == null) return;
    _inOrderTraversal(node.left, values);
    values.add(node.data);
    _inOrderTraversal(node.right, values);
  }

  fintClosetValue(int target) {
    Node? current = root;
    int closetdata = current!.data;
    while (current != null) {
      if ((target - closetdata).abs() > (target - current.data).abs()) {
        closetdata = current.data;
      }
      if (target < current.data) {
        current = current.left;
      } else if (target > current.data) {
        current = current.right;
      } else {
        break;
      }
    }
    return closetdata;
  }

  getHeight() {
    return _getHeight(root);
  }

  _getHeight(Node? node) {
    if (node == null) {
      return 0; // If height of empty tree is defined as 0, otherwise use -1
    } else {
      int leftHeight = _getHeight(node.left);
      int rightHeight = _getHeight(node.right);

      return 1 + math.max(leftHeight, rightHeight);
    }
  }

//------------------------------
  inOrder() {
    inOrderHelper(root);
  }

  inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  //----------------------------
//------------------------------
  preOrder() {
    preOrderHelper(root);
  }

  preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  //----------------------------
//------------------------------
  postOrder() {
    postOrderHelper(root);
  }

  postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }
  //----------------------------
}

void main() {
  BinarySearchTree binarySearchTree = BinarySearchTree();

  List<int> datas = [3, 53, 42, 13, 52, 43];
  for (var i in datas) {
    binarySearchTree.insert(i);
  }
  print(binarySearchTree.fintTargedepth(42));
  // print(binarySearchTree.fintClosetValue(200));
  // print(binarySearchTree.contain(4));
  print(binarySearchTree.getHeight());
  // binarySearchTree.delete(5);
  // print(binarySearchTree.isBST());
  binarySearchTree.inOrder();
  // print('------ ');
  // binarySearchTree.preOrder();
  // print('------ ');
  // binarySearchTree.postOrder();
}
