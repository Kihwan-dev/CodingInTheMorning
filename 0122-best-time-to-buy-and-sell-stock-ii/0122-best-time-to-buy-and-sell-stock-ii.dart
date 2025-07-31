class Solution {
int maxProfit(List<int> prices) {
  ///         7   1   5   3   6   4
  /// buy     7   1   1
  /// sell    7   1   5
  /// profit  0   0
  /// 팔 수 있는 조건? 1. sell > buy
  ///                  2. 다음 price가 현재의 sell보다 낮아야됨(단, 다음 price가 있을 경우에만)
  /// 위 조건이 성립되면 profit += (sell - buy)해주고 sell = -1, buy = 99999로 만들어줌

  if (prices.length == 1) return 0;
  int buy = 99999;
  int sell = -1;
  int profit = 0;

  for (int i = 0; i < prices.length; i++) {
    int p = prices[i];
    //
    if (buy > p) {
      buy = p;
      sell = -1;
    }
    sell = sell < p ? p : sell;

    if (i == 2) print(sell);

    if (i + 1 < prices.length) {
      if (sell > buy && sell > prices[i+1]) {
        profit += (sell - buy);
        sell = -1;
        buy = 99999;
      }
    } else {
      if (sell > buy) {
        profit += (sell - buy);
      }
    }
  }

  return profit;
}
}