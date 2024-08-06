search(List<int> list, int target){
  int startIndex = 0;
  int endIndex = list.length-1;

  while(startIndex <= endIndex){
    int middleIndex = (startIndex + endIndex)~/2;
    if(list[middleIndex] == target){
      return middleIndex;
    }else if(list[middleIndex] < target){
      startIndex = middleIndex+1;
    }else{
      endIndex = middleIndex-1;
    }
  }
  return -1;
}

void main(){
  print(search([1,2,3,4,5], 2));
}