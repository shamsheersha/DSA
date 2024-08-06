void main() {
  List<int> stack = [2, 3, 4, 5, 7, 5];
  List<int> helper = [];
  while (stack.isNotEmpty) {
    int number = stack.removeLast();
    if (number % 2 != 1) {
      helper.add(number);
    }
  }
  while (helper.isNotEmpty) {
    int num = helper.removeLast();
    stack.add(num);
  }

  print(stack);
}