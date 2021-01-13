func findUnsortedSubarray(nums []int) int {
  snums := make([]int, len(nums))
  copy(snums, nums)
  sort.Ints(snums)

  i:=0
  j:=len(nums)-1
  left := true
  right := true
  ans := len(nums)
  for {
    if(nums[i] != snums[i]) { left = false }
    if(nums[j] != snums[j]) { right = false }

    if(left == true) { ans -= 1; i += 1 }
    if(right == true) { ans -= 1; j -= 1 }

    if i>j { break }
    if left == false && right == false { break }
  }

  if(ans < 0) { return 0 } else { return ans }
}