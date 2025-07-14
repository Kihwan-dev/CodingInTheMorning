class Solution {
  /// 2025.07.14 #88
  /// 정렬된 배열 nums1과 nums2가 주어지며 nums1은 충분한 공간을 할당받고 있다
  /// nums1 의 초기 크기 m, nums2의 초기 크기 n 
  /// 두 배열을 합쳐서 nums1에 정렬된 형태로 저장
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if(m == 0 ) {
      nums1.clear();
      //nums1=nums2.toList();
      for(int i=0; i<n; i++) {
        nums1.add(nums2[i]);
      }
      return;
    } 
    if(n == 0) return;
    nums1.setRange(m, m+n, nums2);
    nums1.sort();
  }
}