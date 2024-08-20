class MinHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    heapifyUp(heap.length - 1);
  }

  void heapifyUp(int index) {
    while (index > 0) {
      int parent = (index - 1) ~/ 2;
      if (heap[parent] > heap[index]) {
        swap(parent, index);
        index = parent;
      } else {
        break;
      }
    }
  }

  void heapifyDown(int index) {
    int smallIndex = index;
    int leftIndex = index * 2 + 1;
    int rightIndex = index * 2 + 2;
    if (leftIndex < heap.length && heap[leftIndex] < heap[smallIndex]) {
      smallIndex = leftIndex;
    }

    if (rightIndex < heap.length && heap[rightIndex] < heap[smallIndex]) {
      smallIndex = rightIndex;
    }
    if (smallIndex != index) {
      swap(smallIndex, index);
      heapifyDown(smallIndex);
    }
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
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

  int extractMin() {
    if (heap.isEmpty) {
      throw Exception('Heap is empty');
    }
    int min = heap[0];
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }

  int peek() {
    if (heap.isEmpty) {
      throw Exception('Heap is empty');
    }
    return heap[0];
  }

  // Delete an element from the heap
  void delete(int value) {
    int index = heap.indexOf(value);
    if (index == -1) {
      throw Exception('Value not found in heap');
    }
    heap[index] = heap.removeLast();
    heapifyDown(index);
  }

  void printHeap() {
    print(heap);
  }
}

void main() {
  MinHeap minHeap = MinHeap();
  List<int> data = [5, 3, 8, 4, 1];
  for (var i in data) {
    minHeap.insert(i);
  }
  // minHeap.delete(3);
  // print(minHeap.heap);
  // minHeap.extractMin();
  // print(minHeap.heap);
  // print(minHeap.peek());
  // minHeap.buildHeap([10, 2, 5, 1, 9, 6]);
  minHeap.printHeap();
}