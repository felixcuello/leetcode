package main

import (
	"fmt"
	"sort"
)

func longestConsecutive(nums []int) int {
	sort.Ints(nums)

	if len(nums) == 0 { return 0 }

	n := nums[0]
	current := 1
	longest := 1

	for i:=1; i<len(nums); i++ {
		if(n == nums[i]) { continue } // repeated consecutive

		if n+1 == nums[i] {
			current++
		} else {
			if(current > longest) {
				longest = current
			}
			current = 1
		}

		n = nums[i]
	}

	if(current > longest) {
		longest = current
	}

	return longest;
}

func main() {
	var n int
	fmt.Scan(&n)

	nums := make([]int, n)
	for i:=0; i<n; i++ {
		fmt.Scan(&nums[i])
	}

	fmt.Println(longestConsecutive(nums))
}
