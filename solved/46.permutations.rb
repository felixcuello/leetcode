# @param {Integer[]} nums
# @return {Integer[][]}
def solve(nums, curr)
  if nums.count == curr.count
    @ans << curr.dup
    return
  end

  remaining = nums - curr
  remaining.each do |e|
    curr << e
    solve(nums, curr)
    curr.pop
  end
end

def permute(nums)
  @ans = []
  solve(nums, [])
  @ans
end
