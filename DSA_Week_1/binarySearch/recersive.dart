
// class BinarysearchRec{
//   binarySearchRec(List<int> list, int target){
//     return binarySearchHelper(list, target, 0, list.length-1);
//   }

//   binarySearchHelper(list,target,int startIndex,int endIndex){
//     if(startIndex > endIndex){
//       return null;
//     }
//     int middleIndex = (startIndex + endIndex) ~/2;
//      if (list[middleIndex] == target){
//       return middleIndex;
//      }else if(list[middleIndex] > target){
//       return binarySearchHelper(list, target, middleIndex + 1, endIndex);
//      }else if(list[middleIndex] < target){
//       return binarySearchHelper(list, target, startIndex, middleIndex -1);
//      }
//   }
// }

// void main(){
//   BinarysearchRec obj = BinarysearchRec();

//   print(obj.binarySearchRec([5,4,3,2,1], 2));
// }


binarySearch(List<int> list,int target){
  return binarySearchHelper(list, target, 0, list.length-1);
}

binarySearchHelper(list,target,int startIndex, int endIndex){
  if(startIndex> endIndex){
    return null;
  }
  int middleIndex = (startIndex + endIndex) ~/2;
  if(list[middleIndex] == target){
    return middleIndex;
  }
  else if(list[middleIndex] < target){
    return binarySearchHelper(list, target, middleIndex+1, endIndex);
  }else if(list[middleIndex] > target){
    return binarySearchHelper(list, target, startIndex, middleIndex-1);
  }
  return ;
}

void main(){
  print(binarySearch([1,2,3,4,5], 5));
}