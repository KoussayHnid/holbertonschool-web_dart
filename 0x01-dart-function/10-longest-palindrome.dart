import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) return 'none'; 

  String longest = 'none';

  for (int start = 0; start < s.length; start++) {
    for (int end = start + 2; end <= s.length; end++) {
      String substring = s.substring(start, end);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest;
}
