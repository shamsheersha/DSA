class Node{
  Map<String,Node> character = {};
  bool isLastNode = false;
}

class Trie{
  Node root = Node();

  add(String word){
    Node temp = root;
    for(int i = 0; i < word.length;i++){
      String char = word[i];
      temp.character.putIfAbsent(char, () => Node());
      temp = temp.character[char]!;
    }
     temp.isLastNode = true;
  }
}