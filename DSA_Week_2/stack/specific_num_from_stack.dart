void main() {
  // Initialize variables
  int flag = 0;
  int index = 0;
  List<int> stack = [1, 2, 3, 4, 5];
  
  // Function to search for a value in the stack
  void searchStack(List<int> stack, int target) {
    while (stack.isNotEmpty) {
      var value = stack.removeLast();
      if (value == target) {
        flag = 1;
        index = stack.length;
        break;
      }
    }
  }

  // Call the search function
  searchStack(stack, 2);

  // Output the result
  if (flag == 1) {
    print('Data found at index: $index');
  } else {
    print('No data found');
  }
}