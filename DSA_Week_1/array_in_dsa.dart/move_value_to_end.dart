class SampleArray{
  List<int> moveValueToEnd (List<int> array){
    List<int> result = [];
    int count = 0;

    for(int i = 0; i < array.length; i++){
      if(array[i] == 6){
        count++;
      }
      else{
        result.add(array[i]);
      }
    }
    for(int i = 0; i < count; i++){
      result.add(6);
    }
    return result;
  }
}

void main(){
  List<int> array = [6,1,6,8,10,4,15,6,3,6,6];
  var answer = SampleArray();
  List<int> result =answer.moveValueToEnd(array);
  print(result);
}


