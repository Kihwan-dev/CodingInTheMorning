class Solution {
  /// # 2025.07.31 #150
  /// ## 주식 매수 및 매도의 최적 시기 2
  /// 가격 배열 prices
  /// 주식 여러번 사고 팔기 가능(같은날 x)
  /// 최대 이익을 얻을 수 있는 방법
  /// ### 조건
  /// 1. 1 <= prices.length <= 3 * 10^4
  /// 2. 0 <= prices[i] <= 10^4
  /// * 예시
  /// ### 예제 1
  /// 	입력: prices = [7,1,5,3,6,4]
  /// 	출력: 7
  /// 	설명:
  /// 		1에 사고 5에 팔아서 4의 이익 (5 - 1 = 4)
  /// 		3에 사고 6에 팔아서 3의 이익 (6 - 3 = 3)
  /// 		총 이익은 4 + 3 = 7입니다.
  /// ### 예제 2
  /// 	입력: prices = [1,2,3,4,5]
  /// 	출력: 4
  /// 	설명: 매일 주식을 사고 팔 수 있으며, 마지막 날 5에 팔면 최대 이익이 4입니다.
  /// ### 예제 3
  /// 	입력: prices = [7,6,4,3,1]
  /// 	출력: 0
  /// 	설명: 주가가 계속 떨어지므로, 이익을 얻을 수 없습니다.
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
      if (buy > p) {
        buy = p;
        sell = -1;
      }

      sell = sell < p ? p : sell;

      if (i + 1 < prices.length) {
        if (sell > buy && sell > prices[i + 1]) {
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