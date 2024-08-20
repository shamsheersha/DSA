class TrieNode {
  Map<String, TrieNode> character = {};
  bool isLastNode = false;
}

class Trie {
  TrieNode root = TrieNode();

  insert(String word) {
    TrieNode temp = root;

    for (var i = 0; i < word.length; i++) {
      String char = word[i];
      temp.character.putIfAbsent(char, () => TrieNode());
      temp = temp.character[char]!;
    }
    temp.isLastNode = true;
  }

  search(String word) {
    TrieNode temp = root;
    for (var char in word.split('')) {
      if (!temp.character.containsKey(char)) {
        return false;
      }
      temp = temp.character[char]!;
    }
    return temp.isLastNode;
  }

  // Delete a word from the Trie
  bool delete(String word) {
    return _delete(root, word, 0);
  }

  bool _delete(TrieNode temp, String word, int index) {
    if (index == word.length) {
      // We've reached the end of the word
      if (!temp.isLastNode) {
        // The word is not present
        return false;
      }
      temp.isLastNode = false;
      // If the temp node has no children, it can be deleted
      return temp.character.isEmpty;
    }

    String char = word[index];
    TrieNode? node = temp.character[char];
    if (node == null) {
      // The word is not present
      return false;
    }

    bool shouldDeletetempNode = _delete(node, word, index + 1);

    if (shouldDeletetempNode) {
      // Remove the mapping from the temp node
      temp.character.remove(char);
      // If the temp node has no other children and is not the end of another word, it can be deleted
      return temp.character.isEmpty && !temp.isLastNode;
    }

    return false;
  }

   // this fucton for prefix
  bool searchprefix(String words) {
    TrieNode current = root;
    for (var char in words.split('')) {
      if (!current.character.containsKey(char)) {
        return false;
      }
      current = current.character[char]!;
    }
    return true;
  }
}

//-------------------------------------------------------------------------------------------------------------
class TrieSuffex {
  TrieNode root = TrieNode();

  insert(String word) {
    for (var i = 0; i < word.length; i++) {
      String char = word.substring(i);
      _insertSuffex(char);
    }
  }

  _insertSuffex(String suffix) {
    TrieNode current = root;
    for (var char in suffix.split('')) {
      current.character.putIfAbsent(char, () => TrieNode());
      current = current.character[char]!;
    }
    current.isLastNode = true;
  }

  bool? searchSuffix(String word) {
    TrieNode current = root;
    for (var char in word.split('')) {
      if (!current.character.containsKey(char)) {
        return false;
      }
      current = current.character[char]!;
    }
    return current.isLastNode;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('a');
  print(trie.search('a'));
  trie.searchprefix('hh');
}
