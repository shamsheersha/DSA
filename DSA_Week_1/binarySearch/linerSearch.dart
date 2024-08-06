/**linear search to return index of searching value*/
void main() {
  int value = 2;
  int flag = 0;
  List<int> list = [1, 2, 3, 4, 5];
  for (int i = 0; i < list.length; i++) {
    if (value == list[i]) {
      flag = 1;
      
     return print("value found at index $i");
      
    }
  }
  if (flag == 0) {
    print("value not found ");
  }
}

