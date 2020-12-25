// O(n) solution
func searchInsert(nums []int, target int) int {
  ans := 0
  for ans < len(nums) && nums[ans] < target {
    ans++
  }
  return ans
}
