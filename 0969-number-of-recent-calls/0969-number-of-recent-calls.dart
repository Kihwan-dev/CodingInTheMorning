/// # 2025.07.28 #933
/// ## 최근 호출 수
/// 클래스 RecentCount 구현
/// 주어진 시간 범위 내에서 호출 수를 기록하고 리턴
/// RecenteCounter()는 RecentCounter 객체를 초기화
/// int ping(int t)는 t시점에서 호출됐음을 기록,
/// [t-3000, t] 범위 내에서 발생한 모든 호출 수 리턴
class RecentCounter {

  List<int> records = [];

  RecentCounter();

  int ping(int t) {
    records.add(t);
    int count = 0;
    for (var record in records) {
      if(record < t - 3000) {
        count++;
      } else {
        break;
      }
    }
    return records.length - count;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */