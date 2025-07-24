class Solution {
bool uniqueOccurrences(List<int> arr) {
  if(arr.length == 1) return true;

  Map<int, int> map = {};

  for(var n in arr) {
    map[n] = (map[n] ?? 1) + 1;
  }

  return map.values.length == map.values.toSet().length;
}
}