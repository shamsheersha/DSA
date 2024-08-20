class MaxHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    heapifyUp(heap.length - 1);
  }

  void heapifyUp(int index) {
    while (index > 0) {
      int parent = (index - 1) ~/ 2;
      if (heap[parent] < heap[index]) {
        swap(parent, index);
        index = parent;
      } else {
        break;
      }
    }
  }

  void heapifyDown(int index) {
    int greatIndex = index;
    int leftIndex = index * 2 + 1;
    int rightIndex = index * 2 + 2;
    if (leftIndex < heap.length && heap[leftIndex] > heap[greatIndex]) {
      greatIndex = leftIndex;
    }
    if (rightIndex < heap.length && heap[rightIndex] > heap[greatIndex]) {
      greatIndex = rightIndex;
    }
    if (greatIndex != index) {
      swap(index, greatIndex);
      heapifyDown(greatIndex);
    }
  }

  void swap(int index1, int index2) {
    var temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  // Build heap from an arbitrary list
  void buildHeap(List<int> values) {
    heap = values;
    for (var i = (heap.length ~/ 2) - 1; i >= 0; i--) {
      heapifyDown(i);
    }
  }

  int extractMax() {
    if (heap.isEmpty) {
      throw Exception('heap is Empty');
    }
    int max = heap[0];
    swap(0, heap.length - 1);
    heap.removeLast();
    heapifyDown(0);
    return max;
  }

  int peek() {
    if (heap.isEmpty) {
      throw Exception('heap is Empty');
    }
    return heap[0];
  }

  // Delete an element from the heap
  void delete(int value) {
    int index = heap.indexOf(value);

    if (index == -1) {
      throw Exception('given deleteIndex not found');
    }
    if (index == heap.length - 1) {
      heap.removeLast();
    } else {
      heap[index] = heap.removeLast();
      if (index > 0 && heap[index] > heap[(index - 1) ~/ 2]) {
        heapifyUp(index);
      } else {
        heapifyDown(index);
      }
    }
  }

  void printHeap() {
    print(heap);
  }
}

void main() {
  MaxHeap maxHeap = MaxHeap();
  List<int> data = [5, 3, 10, 7, 2, 99, 8, 4, 1];
  for (var i in data) {
    maxHeap.insert(i);
  }
  maxHeap.delete(3);
  print(maxHeap.heap);
  maxHeap.extractMax();
  print(maxHeap.heap);
  print(maxHeap.peek());
  maxHeap.buildHeap([10, 2, 5, 1, 9, 6]);
  maxHeap.printHeap();
}