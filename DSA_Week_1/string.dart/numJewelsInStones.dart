/**Leetcode 771 */
class Solution {
  numJewelsInStones(String jewels, String stones) {
    int count = 0;
    for (int i = 0; i < stones.length; i++) {
      for (int j = 0; j < jewels.length; j++) {
        if (stones[i] == jewels[j]) {
          count++;
        }
      }
    }
    print(count);
  }
}

void main() {
  Solution solution = Solution();
  solution.numJewelsInStones('jewels', 'stones');
}