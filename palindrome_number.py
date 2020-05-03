# https://leetcode.com/problems/palindrome-number/

class Solution:
  def isPalindrome(self, x: int) -> bool:
    if x < 0:
      return False
    
    s = str(x)
    n = len(s)
    for i in range(0, n):
      if (i+i > n):
        break
      if(s[i] != s[n-i-1]):
        return False
      
    return True
