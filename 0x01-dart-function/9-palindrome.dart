bool isPalindrome(String s) {
  if (s.length < 3) return false;

  // Compare the string with its reverse
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}
