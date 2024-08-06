
// void main(){
//   List<int> stack = [2,3,4,5,6];
//   List<int> helper = [];

//   while(stack.isNotEmpty){
//     int numbers = stack.removeLast();
//     if(numbers %2 == 0){
//       helper.add(numbers);
//     }
//   }
//   while(helper.isNotEmpty){
//     int nums = helper.removeLast();
//     stack.add(nums);
//   }
//   print(stack);
// }


void main(){
  List<int> stack = [2,3,4,5,6,7,8];
  List<int> helper = [];

  while(stack.isNotEmpty){
    int number = stack.removeLast();
    if(number %2 == 1){
    helper.add(number);      
    }
  }

  while(helper.isNotEmpty){
    int num = helper.removeLast();
    stack.add(num);
  }
  print(stack);
}