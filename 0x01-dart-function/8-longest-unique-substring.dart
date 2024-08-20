String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';

  int start = 0;
  int maxLength = 0;
  String longestSubstring = '';
  Map<String, int> charIndexMap = {};

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (charIndexMap.containsKey(currentChar)) {
      start = (charIndexMap[currentChar]! + 1).clamp(start, str.length);
    }

    charIndexMap[currentChar] = end;

    int currentLength = end - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}
