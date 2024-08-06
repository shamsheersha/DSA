

  // stringReverse(String word){
  //   return helper(word);
  // }
  // helper(word){
  //   if(word.length <= 1){
  //     return word;
  //   }else{
  //     return helper(word.substring(1)) + word[0];
  //   }
  // }

  // void main(){
  //   print(stringReverse('word'));
  // }


stringReverse(String word){
  return helper(word);
}

helper(word){
  if(word.length <= 1){
    return word;
  }
  else{
   return helper(word.substring(1)) + word[0];
  }
}

void main(){
  print(stringReverse('word'));
}