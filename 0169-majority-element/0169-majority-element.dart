class Solution {
  /// 2025.07.09 #169
  /// 배열에서 가장 많이 포함돼있는 값(최빈값) 찾기
  /// 최빈값은 배열의 원소 중 절반 초과의 개수를 차지하는 원소
  int majorityElement(List<int> nums) {
    if (nums.length == 1) return nums[0];
  
    
    Map<int, int> map = {};
    int maxNum = 0;
    for (int n in nums) {
      map[n] = (map[n] ?? 0) + 1;
      maxNum = max(maxNum, map[n]!);
      if(maxNum > nums.length / 2) return n;
    }
  
    return map.entries.firstWhere((element) => element.value == maxNum).key;
    /*
    /// Boyer-Moore Voting 알고리즈
    /// 찾고자 하는 요소가 배열의 절반 이상 차지할 때만 사용 가능
    int count = 0;
    int majority = 0;
    
    for (int i = 0; i < nums.length; i++)
    {
      if(count == 0)
        majority = nums[i];
     
      if(majority == nums[i])
        count++;
      else
        count--;
    }
   
    return majority;
    */
  }
}