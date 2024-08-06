// int fact(n){
//   if(n == 1){
//     return 1;
//   }else{
//     return n*fact(n-1);
//   }
// }
// void main(){
//   int dd = fact(5);
//   print(dd);
// }


// addTwoSum(List<int> list , int sum){
// return twoSumHelper(list, sum, 0);
// }

// twoSumHelper(list,sum,int index){
// if(index >= list.length){
//   return sum;
// }else{
//   return twoSumHelper(list, sum + list[index], index+1);
// }
// }

// void main(){
//   print(addTwoSum([1,2,3], 0));
// }


// stringReverse(String word){
//   return stringhelper(word);
// }

// stringhelper(word){
//   if(word.length <= 1){
//     return word;
//   }else{
//     return stringhelper(word.substring(1)) + word[0];
//   }
// }

// void main(){
//   print(stringReverse('string'));
// }

bool palindrome(String word){
  return palindromeH(word);
}

palindromeH(word){
  if(word.length <= 1){
    return true;
  }
  if(word[0] != word[word.length-1]){
    return false;
  }
  return palindrome(word.substring(1,word.length-1));
}

void main(){
  print(palindrome('eye'));
}