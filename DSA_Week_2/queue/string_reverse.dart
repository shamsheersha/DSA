import 'dart:collection';

String reverseString(String word) {
  Queue<String> queue = Queue();
  int i = 0;
  while (i < word.length) {
    queue.addLast(word[i]);
    i++;
  }
  print(queue);
  String reversed = '';
  while (queue.isNotEmpty) {
    reversed += queue.removeLast();
  }
  return reversed;
}

void main() {
  String word = 'Hello';
  String reversed = reverseString(word);
  print(reversed); // Output: '!dlroW ,olleH'
}