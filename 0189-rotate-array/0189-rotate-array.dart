class Solution {
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