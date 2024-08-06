/**Leetcode  2942 */
class Solution {
  findWordsContaining(List<String> words, String x) {
    List<int> indices = [];
    for (int i = 0; i < words.length; i++) {
      int flag = 0;
      for (int j = 0; j < words[i].length; j++) {
        if (words[i][j] == x) {
          flag = 1;
        }
      }
      if (flag == 1) {
        indices.add(i);
      }
    }
    print(indices);
  }
}

void main() {
  Solution solution = Solution();
  solution.findWordsContaining(['Banana','Nidh','node'], 'n');
}