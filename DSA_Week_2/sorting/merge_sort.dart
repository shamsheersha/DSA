// mergeSort(List<int> arr){
//   if(arr.length < 2){
//     return;
//   }

//   int mid = arr.length ~/2;
//   List<int> leftArray = arr.sublist(0,mid);
//   List<int> rightArray = arr.sublist(mid);

//   mergeSort(leftArray);
//   mergeSort(rightArray);

//   merge(arr, leftArray, rightArray);
// }

// merge(arr,leftArray,rightArray){
//   int leftLength = leftArray.length;
//   int rightLength = rightArray.length;
//   int i = 0, j = 0, k = 0;

//   while(i < leftLength && j < rightLength){
//     if(leftArray[i] <= rightArray[j]){
//       arr[k] = leftArray[i];
//       i++;
//     }else{
//       arr[k] = rightArray[j];
//       j++;
//     }
//     k++;
//   }
//   while(i < leftLength){
//     arr[k] = leftArray[i];
//     i++;
//     k++;
//   }

//   while(j < rightLength){
//     arr[k] = rightArray[j];
//     j++;
//     k++;
//   }
// }

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  print("Original array: \n${arr}");

  mergeSort(arr);

  print("Sorted array: \n${arr}");
}


mergeSort(List<int> arr){
  if(arr.length < 2){
    return arr;
  }

  int mid = arr.length ~/2;
  List<int> leftArray = arr.sublist(0, mid);
  List<int> rightArray = arr.sublist(mid);

  mergeSort(leftArray);
  mergeSort(rightArray);

  merge(arr, leftArray, rightArray);
}

merge(arr,leftArray,rightArray){
  int leftLength = leftArray.length;
  int rightLength = rightArray.length;
  int i = 0, j = 0, k = 0;

  while(i < leftLength && j < rightLength){
    if(leftArray[i] <= rightArray[j]){
      arr[k] = leftArray[i];
      i++;
    }else{
      arr[k] = rightArray[j];
      j++;
    }
    k++;
  }

  while(i < leftLength){
    arr[k] = leftArray[i];
    i++;
    k++;
  }

  while(j < rightLength){
    arr[k] = rightArray[j];
    j++;
    k++;
  }
}