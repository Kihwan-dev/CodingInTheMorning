class Solution {
  /// # 2025.08.14 #383
  /// ## 랜섬노트
  /// 문자열 ransomNote, magazine
  /// ransomNote를 작성하기 위한 모든 문자가
  /// magzine에 있는지 확인
  /// 각 문자는 magazine에서 단 한 번만 사용 가능
  /// true | false 리턴
  bool canConstruct(String ransomNote, String magazine) {
    if (ransomNote.length > magazine.length) return false;

    /* 44ms
    List<String> rList = ransomNote.split("")..sort();
    int rIndex = 0;
    List<String> mList = magazine.split("")..sort();
    int mIndex = 0;

    while (rIndex < rList.length && mIndex < mList.length) {
      if (rList[rIndex] != mList[mIndex]) {
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

    return false; */

    if (ransomNote.length > magazine.length) {
      return false;
    }
    Map<String, int> lettersCount = {};

    for (int i = 0; i < magazine.length; i++) {
      lettersCount[magazine[i]] = (lettersCount[magazine[i]] ?? 0) + 1;
    }
    for (int i = 0; i < ransomNote.length; i++) {
      if ((lettersCount[ransomNote[i]] ?? 0) - 1 == -1) {
        return false;
      }
      lettersCount[ransomNote[i]] = (lettersCount[ransomNote[i]] ?? 0) - 1;
    }
    return true;
  }
}