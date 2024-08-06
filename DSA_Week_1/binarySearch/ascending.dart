
class binarySearch{
  searchBinary(List<int> list, int target){
    int startIndex = 0;
    int endIndex = list.length -1;

    while(startIndex <= endIndex){
      int middleIndex = (startIndex + endIndex) ~/2;
      if(list[middleIndex] == target){
        return middleIndex;
      }else if(list[middleIndex] < target){
        startIndex = middleIndex +1;
      }else if(list[middleIndex] > target){
        endIndex = middleIndex -1;
      }
    }
    return -1;
  }
}

void main(){
  binarySearch obj = binarySearch();
  List<int> list = [1,2,3,4,5];
  int target = 2;
  print(obj.searchBinary(list, target));
}