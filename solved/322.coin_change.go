package main

import (
	"fmt"
)

func coinChange(coins []int, amount int) int {
	dp := make([]int, amount + 1)
	l_coins := len(coins)
	dp[0] = 0
	for i:=1; i<=amount; i++ {
		min := -1
		for j:=0; j<l_coins; j++ {
			pos := i - coins[j]
			if pos >= 0 && dp[pos] >= 0 {
				if min < 0 {
					min = dp[pos] + 1
				} else {
					if dp[pos] + 1 < min {
						min = dp[pos] + 1
					}
				}
			}
		}
		dp[i] = min
	}
	return dp[amount]
}

func main() {
	var amount int
	fmt.Scan(&amount)

	var n_coins int
	fmt.Scan(&n_coins)

	coins := make([]int, n_coins)
	for i:=0; i<n_coins; i++ {
		fmt.Scan(&coins[i])
	}
	fmt.Println(coinChange(coins, amount))
}
