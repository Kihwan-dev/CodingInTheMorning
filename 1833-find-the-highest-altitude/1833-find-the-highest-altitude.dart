class Solution {
  /// # 2025.08.20 #1732
  /// ## 가장 높은 고도 찾기
  /// 정수 리스트 gain(고도 변화 기록)
  /// gain[i] : i번째 구간에서 얻은 고도 변화
  /// 자전거 타는 사람이 처음 고도 9에서 시작
  /// 가장 높은 고도 구하기
  /// - 처음 고도는 0
  /// - 각 구간의 고도 변화에 따른 누적 고도 계산
  /// - 누적된 고도 중 가장 높은 고도 리턴
  /// * 조건
  /// 1. 1≤gain.length≤100
  /// 2. −100≤gain[i]≤100
  int largestAltitude(List<int> gain) {
    int max = gain[0] > 0 ? gain[0] : 0;
    int altitude = gain[0];
    for (int i = 1; i < gain.length; i++) {
      altitude += gain[i];
      max = max > altitude ? max : altitude;
    }
    return max;
  }
}