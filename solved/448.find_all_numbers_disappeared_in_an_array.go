import (
  "fmt"
  "math"
)

func findDisappearedNumbers(nums []int) []int {
  for i:=0; i<len(nums); i++ {
    pos := int(math.Abs(float64(nums[i])) - 1)
    nums[pos] = int(math.Abs(float64(nums[pos])) * -1)
  }

  var ans []int
  for i:=0; i<len(nums); i++ {
    if nums[i] > 0 {
      ans = append(ans, i+1)
    }
  }

  return ans
}