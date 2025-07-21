class Solution {
  bool isHappy(int n) {
    
    List<int> list = [];

    int getEachDigitSquared(int num) {
      int sum = 0;

      for(int i=0; i<num.toString().length; i++) {
        //sum = sum + (int.parse(num.toString()[i]) * int.parse(num.toString()[i]));
        sum += pow(int.parse(num.toString()[i]), 2).toInt();
      }

      if(sum == 1) return sum;
      if(list.contains(sum)) return 0;
      list.add(sum);

      return getEachDigitSquared(sum);
    }

    return getEachDigitSquared(n) == 1;
  }
}