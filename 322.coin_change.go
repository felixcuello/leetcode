package main

import (
	"fmt"
)

func min(a int, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func coinChange(coins []int, amount int) int {
	mem := make([]int, amount + 1)

	mem[0] = 0
	for i:=1; i<amount; i++ {
		min := amount
		for coin:=0; coin<len(coins); coin++ {
			pos = i
			current_amount = mem[pos]
		}
	}

	return mem[amount]
}

func main() {
	// INPUT FORMAT
	// amount
	// number_of_coins
	// c1 c2 c3 ... cn

	var amount int
	fmt.Scan(&amount)

	var n int
	fmt.Scan(&n)
	coins := make([]int, n)
	for i:=0; i<n; i++ { fmt.Scan(&coins[i]) }

	coinChange(coins, amount)
}
