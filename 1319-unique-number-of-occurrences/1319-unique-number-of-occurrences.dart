class Solution {
  /// # 2025.07.24 #1207
  /// ## 고유한 빈도 횟수
  /// 정수 배열 arr
  /// arr의 각 원소가 나타나는 빈도 수가 고유한지 확인
  /// 빈도가 모두 다르면 true 리턴, 아니면 false 리턴
  /// input [1,2,2,1,1,3] / output true
  /// 1 - 3번 / 2 - 2번 / 3 - 1 번
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
  
    // for(var n in arr) {
    //   map[n] = (map[n] ?? 1) + 1;
    // }
  
    // return map.values.length == map.values.toSet().length;
  }
}