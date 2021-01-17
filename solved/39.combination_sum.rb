x# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def play(candidates, target, result, current)
  return if target < 0
  if target == 0
    result << current.sort
    return
  end

  candidates.each do |c|
    play(candidates, target-c, result, current + [c])
  end
end

def combination_sum(candidates, target)
  result = []
  play(candidates, target, result, [])
  result.uniq
end
