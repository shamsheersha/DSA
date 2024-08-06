// bool palindrome(String str){
//   if(str.length <=1){
//     return true;
//   }
//   if(str[0] != str[str.length-1]){
//     return false;
//   }
//   return palindrome(str.substring(1,str.length-1));
// }

// void main(){
//   print(palindrome('eye'));
// }


bool palindrome(String word){
  if(word.length <= 1){
    return true;
  }

  if(word[0] != word[word.length-1]){
    return false;
  }
  return palindrome(word.substring(1,word.length-1));
}

void main(){
  print(palindrome('wwww'));
}