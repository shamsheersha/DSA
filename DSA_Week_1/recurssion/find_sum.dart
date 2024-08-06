

// findingSum(List<int> list,int sum){
//   return addingSum(list,sum,0);
// }

// addingSum(List<int> list, int sum, int index){
//   if(index>= list.length){
//     return sum;
//   }else{
//     return addingSum(list, sum + list[index], index +1);
    
//   }
// }

// void main(){
//   print(findingSum([2,3,4], 0));
// }



findingSum(List<int>list, int sum){
  return sumHelper(list, sum, 0);
}

sumHelper(list,sum, int index){
  if(index>= list.length){
    return sum;
  }else{
    return sumHelper(list, sum + list[index], index+1);
  }
}

void main(){
  print(findingSum([1,2,3], 0));
}