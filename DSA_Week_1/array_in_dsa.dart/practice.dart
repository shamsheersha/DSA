class Array{
  List<int> twosum(List<int> array,int target){
    for(int i = 0; i < array.length; i++){
      for(int j = i+1; j < array.length; j++){
        if(array[i] + array[j] == target){
          return [i,j];
        }
      }
    }
    return[];
  }
}

void main(){
  Array obj = Array();
  List<int> array = [6,5,7,9,4,0,2];
  int target = 10;
  print(obj.twosum(array, target));
}