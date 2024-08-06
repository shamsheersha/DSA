void main(){
  String word='car';
  List<String>char=[];
  List<String>stack=word.split('');
  while (stack.isNotEmpty) {
    String words=stack.removeLast();
    char.add(words);    
  }

  word=char.join('');
    print(word);
  
}
