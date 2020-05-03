# https://leetcode.com/problems/valid-parentheses/submissions/

class Solution:
    def isValid(self, s: str) -> bool:
      freq = {"curved": 0, "square": 0, "curly":0}
      btype = {
        '(':'curved', ')':'curved',
        '[':'square', ']':'square',
        '{':'curly', '}':'curly',
      }
      n = len(s)
      stack = []
      for i in range(0,n):    # Check if braces are valid
        l = s[i]
        if(l=='(' or l=='[' or l=='{'):
          freq[btype[l]] += 1
          stack.append(btype[l])
        elif(l==')' or l==']' or l=='}'):
          if(len(stack) > 0):
            rtype = stack.pop()
            if(btype[l] != rtype):
              return False
            freq[btype[l]] -= 1
          else:
            return False
          
      for k in freq:          # Check if braces are balanced
        if(freq[k] != 0):
          return False

      return True


