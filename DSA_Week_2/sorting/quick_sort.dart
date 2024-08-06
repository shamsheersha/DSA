
void main() {
  // Testing the quicksort function
  print(quickSort([2, 45, 6, 1, 2]));
}


List<int> quickSort(List<int> list){
  if(list.length <= 1){
    return list;
  }

  int pivotValue = list[list.length ~/2];

  List<int> left = [];
  List<int> midd = [];
  List<int> right = [];
  
  for(var i in list){
    if(i < pivotValue){
      left.add(i);
    }else if(i > pivotValue){
      right.add(i);
    }else{
      midd.add(i);
    }
  }

  return [...quickSort(left),...midd,...quickSort(right)];
}