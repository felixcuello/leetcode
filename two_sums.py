# nums = [2,  7,  11,   15]
# target = 9
# mem = {7:0, 2:1, -2:2, -6:3}

# https://leetcode.com/problems/two-sum

class Solution:
  def twoSum(self, nums: List[int], target: int) -> List[int]:
    nS = len(nums)
    mem = {}
    for i in range(0, nS):
      t = target - nums[i]
      if(nums[i] in mem):
        return [mem[nums[i]], i]
      mem[t] = i

# O(n**2)
#class Solution:
#  def twoSum(self, nums: List[int], target: int) -> List[int]:
#    nS = len(nums)
#    for i in range(0, nS):
#      for j in range(0, nS):
#        if(nums[i] + nums[j] == target):
#          return [i, j]

