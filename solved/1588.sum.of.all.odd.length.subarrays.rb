# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
  sum = 0
  ac = arr.count
  size = 0
  while size < ac
    start = 0
    while start+size < ac
      for i in start..(start+size)
        # puts "adding #{start}..#{start+size} => #{arr[i]}"
        sum += arr[i]
      end
      start += 1
    end
    size += 2
  end
  sum
end
