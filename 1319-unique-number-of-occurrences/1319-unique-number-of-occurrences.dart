class Solution {
// bool uniqueOccurrences(List<int> arr) {
//   if(arr.length == 1) return true;

//   Map<int, int> map = {};

//   for(var n in arr) {
//     map[n] = (map[n] ?? 1) + 1;
//   }

//   return map.values.length == map.values.toSet().length;
// }
bool uniqueOccurrences(List<int> arr) {
  if(arr.length == 1) return true;

  Map<int, int> map = {};
  Set<int> oSet = {};

  for(var n in arr) {
    map[n] = (map[n] ?? 1) + 1;
  }
  
  for(var n in map.values) {
    if(!oSet.add(n)) return false;
  }

  return true;
}
}