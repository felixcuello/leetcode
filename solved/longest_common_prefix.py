# https://leetcode.com/problems/longest-common-prefix/

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
      prefix = ""
      keep_going = True
      i = 0
      while keep_going:
        letter = ""
        if(len(strs) == 0):        # No words
          break

        if(i >= len(strs[0])):     # Out of boundary, first word
          break
        else:
          letter = strs[0][i]      # Whoops, we have a letter!

        for word in strs:
          if(i >= len(word)):      # Out of boundary (other word)
            keep_going = False
            letter = ""
            break
          else:
            if(letter != word[i]): # Found a different letter, no more common prefix!
              keep_going = False
              letter = ""
              break

        prefix += letter
        i += 1

      return prefix
