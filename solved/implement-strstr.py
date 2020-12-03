# https://leetcode.com/problems/implement-strstr/submissions/

class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
      hL = len(haystack)
      nL = len(needle)

      if(needle == 0):
        return 0;
        
      if(nL > hL):   # Needle can't be bigger than the stack
        return -1
        
      for i in range(0, hL-nL+1):
        found = True
        for j in range(0, nL):
          if(haystack[i+j] != needle[j]):
            found = False
            break
        
        if(found):
          return i
      
      return -1
      
    
