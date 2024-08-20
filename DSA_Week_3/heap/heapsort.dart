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

  void heapifyDown(int index, int heapLength) {
    int largestIndex = index;
    int leftIndex = index * 2 + 1;
    int rightIndex = index * 2 + 2;
    if (leftIndex < heapLength && heap[leftIndex] > heap[largestIndex]) {
      largestIndex = leftIndex;
    }
    if (rightIndex < heapLength && heap[rightIndex] > heap[largestIndex]) {
      largestIndex = rightIndex;
    }
    if (largestIndex != index) {
      swap(index, largestIndex);
      heapifyDown(largestIndex, heapLength);
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
      heapifyDown(i, heap.length);
    }
  }

  List<int> heapSort(List<int> data) {
    buildHeap(data);
    for (var i = data.length - 1; i > 0; i--) {
      swap(0, i);
      heapifyDown(0, i);
    }
    return heap;
  }
}

void main() {
  List<int> data = [3, 5, 6, 8, 5, 4, 2, 9, 1];
  MaxHeap maxHeap = MaxHeap();
  print(maxHeap.heapSort(data));
}