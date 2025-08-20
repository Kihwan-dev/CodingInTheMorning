class Solution {
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