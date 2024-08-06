void insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int data = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > data) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = data;
  }
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  print("Original array: \n${arr}");

  insertionSort(arr);

  print("Sorted array: \n${arr}");
}



