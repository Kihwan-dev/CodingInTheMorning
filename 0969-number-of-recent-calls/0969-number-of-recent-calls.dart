class RecentCounter {

  List<int>? records;

  RecentCounter() {
    records = [];
  }

  int ping(int t) {
    records!.add(t);
    int count = 0;
    for (var record in records!) {
      if(t - 3000 <= record && record <= t) count++;
    }
    return count;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */