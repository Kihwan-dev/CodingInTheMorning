class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if(m == 0 ) {
      nums1.clear();
      //nums1=nums2.toList();
      for(int i=0; i<n; i++) {
        nums1.add(nums2[i]);
      }
      print("nums1 : $nums1");
      return;
    } 
    if(n == 0) return;
    print("m : $m, n : $n");
    nums1.setRange(m, m+n, nums2);
    print("before sort : $nums1");
    nums1.sort();
    print("after sort : $nums1");
  }
}