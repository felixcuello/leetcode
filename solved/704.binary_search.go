import (
  "fmt"
)

func search(nums []int, target int) int {
  l := 0
  u := len(nums)

  for l<u {
    mid := (u+l) / 2
    if(nums[mid] == target) {
      return mid
    } else if(nums[mid] < target) {
      l = mid + 1
    } else {
      u = mid
    }
  }

  return -1
}
