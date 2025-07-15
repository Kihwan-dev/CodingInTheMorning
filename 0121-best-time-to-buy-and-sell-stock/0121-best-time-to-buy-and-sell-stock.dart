class Solution {
  int maxProfit(List<int> prices) {
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