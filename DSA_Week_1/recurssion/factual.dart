

// int fact(int n){
//   if(n == 1){
//     return 1;
//   }else{
//     return n * fact(n-1);
//   }
// }
// void main (){
//   var d = fact(10);
//   print(d);
// }

fact(int n){
  if(n == 1){
    return 1;
  }else{
    return n * fact(n-1);
  }
}

void main(){
  print(fact(5));
}
