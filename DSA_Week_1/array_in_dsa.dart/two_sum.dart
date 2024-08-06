int sumofList(List<int> list){
  if(list.isEmpty){
    return 0;
  }else{
    return  sumofList(list.sublist(1)) + list[0];
  }
}

void main(){
  print(sumofList([1,2,3,4,5]));
}