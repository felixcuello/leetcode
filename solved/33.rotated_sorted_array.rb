def search(nums, target)
  for i in (0..nums.count-1)
    return i if nums[i] == target
  end

  return -1
end
