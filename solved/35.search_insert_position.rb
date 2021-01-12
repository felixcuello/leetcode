# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  for i in (0..nums.count-1) do
    return i if nums[i] >= target
  end
  nums.count
end