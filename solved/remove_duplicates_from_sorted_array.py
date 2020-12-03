# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution:
  def removeDuplicates(self, nums: List[int]) -> int:
    n = len(nums)
    seen = "x"
    count = 0
    i = 0

    for e in nums:
      if(e != seen):
        seen = e
        nums[i] = e
        i += 1
        count += 1

    return count
