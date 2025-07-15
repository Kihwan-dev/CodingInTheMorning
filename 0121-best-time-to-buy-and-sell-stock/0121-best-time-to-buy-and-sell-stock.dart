class Solution {
  /// 2025.07.15 #121
  /// 길이 n인 정수 배열 prices
  /// prices[i]는 i번째 날에 해당 주식의 가격
  /// 한 번의 거래(한 주를 매수하고, 이후의 다른 하루에 매도)로 얻을 수 있는 최대 이익 구하기
  /// 이익을 낼 수 없는 경우에는 0 리턴
  /// Input  : prices = [7,1,5,3,6,4]
  /// Output : 5
  int maxProfit(List<int> prices) {
    if(prices.length == 1) return 0;
    int buy = 99999;
    int sell = -1;
    int profit = 0;

    for(var p in prices) {
      if(buy > p) {
        buy = p;
        sell = -1;
      } 
      
      if (sell < p) {
        sell = p;
      }
      profit = max(profit, sell - buy);
    }

    return profit;
  }
}