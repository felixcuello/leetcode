# https://leetcode.com/problems/reverse-integer/

import string
import math

class Solution:
    def reverse(self, x: int) -> int:
      positive = x > 0
      s = str(abs(x))
      rs = s[::-1]
      
      result = 0
      if positive:
        result = int(rs)
      else:
        result = -1 * int(rs)
        
      if( (result < -2**31) or (result > 2**31 - 1) ):
        return 0
      else:
        return result


