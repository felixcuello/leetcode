# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    canreach = {0 => nums[0]}

    for i in (0..nums.count() - 2)
        return false if canreach[i] - 1 < 0
        canreach[i+1] = [canreach[i]-1, nums[i+1]].max
    end

    true
end
