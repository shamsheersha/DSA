// reverseArray(List<int> array){
//   if(array.length <= 1){
//     return array;
//   }else{
//     return reverseArray(array.sublist(1))+ [array[0]];
//   }
// }

// void main(){
//   print(reverseArray([1,2,3]));
// }


reverseArray(List<int> array){
  if(array.length <= 1){
    return array;
  }else{
    return reverseArray(array.sublist(1)) + [array[0]];
  }
}

void main(){
  print(reverseArray([1,2,3]));
}