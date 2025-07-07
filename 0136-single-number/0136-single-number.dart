class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> map = {};
    for(int num in nums) {
      if(map[num] == 0 || map[num] == null) {
        map[num] = 1;
      } else if(map[num] == 1) {
        map[num] = 0;
      }
    }
  
    for(var entry in map.entries) {
      if(entry.value == 1) {
        return entry.key;
      }
    }
  
    return -1;
  }
}