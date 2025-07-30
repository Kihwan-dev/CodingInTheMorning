class Solution {
  /// # 2025.07.30 #189
  /// ## 배열 회전
  /// 정수 배열 nums 오른쪽으로 k번 회전
  /// 회전 : 마지막 요소를 배열의 처음으로 이동
  void rotate(List<int> nums, int k) {
    if(nums.length == 1 || nums.length == k) return;
    
    if(k > nums.length) {
        k %= nums.length;
    }
    
    List<int> list = [];
    list.addAll(nums.sublist(nums.length - k));
    list.addAll(nums.sublist(0, nums.length - k));
    
    nums.clear();
    nums.addAll(list);
  }
}