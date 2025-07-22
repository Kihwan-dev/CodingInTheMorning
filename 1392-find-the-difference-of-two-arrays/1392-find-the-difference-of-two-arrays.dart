class Solution {
    List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
        
      return [
        nums1.where((e) => !nums2.contains(e)).toSet().toList(),
        nums2.where((e) => !nums1.contains(e)).toSet().toList(),
      ];


    //   List<List<int>> list = [[], []];
    //   List<int> removeList = [];
  
    //   for (int i = 0; i < nums1.length; i++) {
    //       if (nums2.contains(nums1[i])) {
    //       nums2.removeWhere((n) => n == nums1[i]);
    //       removeList.add(nums1[i]);
    //       } else {
    //       if(removeList.contains(nums1[i])) continue;
    //       if (!list[0].contains(nums1[i])) {
    //           list[0].add(nums1[i]);
    //       }
    //       }
    //   }
    //   for (int i = 0; i < nums2.length; i++) {
    //       if (!list[1].contains(nums2[i])) {
    //       list[1].add(nums2[i]);
    //       }
    //   }
    //   return list;
    }
}