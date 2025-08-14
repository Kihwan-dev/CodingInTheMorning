class Solution {
bool canConstruct(String ransomNote, String magazine) {
  List<String> rList = ransomNote.split("")..sort();
  int rIndex = 0;
  List<String> mList = magazine.split("")..sort();
  int mIndex = 0;

  while (rIndex < rList.length && mIndex < mList.length) {
    //
    if (rList[rIndex] != mList[mIndex]) {
      //
      mIndex++;
      while (mIndex < mList.length) {
        if (rList[rIndex] == mList[mIndex]) {
          rIndex++;
          mIndex++;
          break;
        }
        mIndex++;
      }
    } else {
      rIndex++;
      mIndex++;
    }
  }
  if (rIndex == rList.length) return true;

  return false;
}
}