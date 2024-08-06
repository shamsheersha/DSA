class SampleArray{
    twoNumberSum (List<int> array, int target){
    for(int i = 0; i < array.length; i++){
      for(int j = i+1; j < array.length; j++){
        if(array[i] + array[j] == target){
          return [array[i],array[j]];
        }
      }
    }
    return [];
  }
}

void main(){
  List <int> array = [6,5,7,9,4,0,2];
  int target = 10;
   var sum =SampleArray();
  List<int> result = sum.twoNumberSum(array,target);
  print(result);
}






// class Sample{
//   List<int> sample (List<int> list, int value){
//     for(int i = 0; i < list.length; i++){
//       if(list[i] == 0){
//         list.remove(list[i]);
//       }
//     }
//     return list;
//   }
// }












// void main() {
//   List<int> list = [45,7,0,6,8,0,5,0];
//   int value = 1000;
//   var obj = Sample();

//   List<int> result = obj.sample(list, value);
//   print(result);
// }







