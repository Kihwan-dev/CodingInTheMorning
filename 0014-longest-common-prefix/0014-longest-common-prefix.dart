class Solution {
String longestCommonPrefix(List<String> strs) {
  if (strs.length == 1) return strs[0];
  strs.sort((a, b) => a.length.compareTo(b.length));
  if (strs[0].isEmpty) return "";
  String str="";
  for (int i = 1; i <= strs[0].length; i++) {
    for (int j = 1; j<strs.length; j++) {
      str = strs[0].substring(0, i);
      if (!strs[j].startsWith(str)) {
        return str.substring(0, str.length - 1);
      }
    }
  }
  return str;
}
}