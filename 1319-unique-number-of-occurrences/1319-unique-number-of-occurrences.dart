class Solution {
bool uniqueOccurrences(List<int> arr) {
  if(arr.length == 1) return true;

  Map<int, int> map = {};

  for(var n in arr) {
    map[n] = (map[n] ?? 0) + 1;
  }

  return map.values.toList().length == map.values.toList().toSet().length;
}
}