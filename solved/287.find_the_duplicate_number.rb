# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    nums.sort!

    ans = nums[0]
    for i in (1..nums.count-1)
        return ans if nums[i] == ans
        ans = nums[i]
    end
end