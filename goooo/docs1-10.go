package main

import (
	"fmt"
	"time"
	"math"
	"math/rand"
)

func split(sum int) (x, y int) {
	x = sum * 4 / 9
	y = sum - x
	return
}

func swap(a string, b string) (string, string) {
	return b, a
}

func add(a, b int) int {
	return a + b
}

/*
func add(a int, b int) int {
	return a + b
}
*/

func main() {
	a, b := swap  ("hello", "world")
	fmt.Println   ("Hello, world!")
	fmt.Println   ("The time is", time.Now())
	fmt.Println   ("A number:", rand.Intn(10))
	fmt.Printf    ("Another number: %d\n", 10)
	fmt.Println   ("Pi:", math.Pi)
	fmt.Println   ("1 + 2 =", add(1, 2))
	fmt.Println   (a, b)
	x, y := split (17)
	fmt.Println   ("17 =", x, y)
	var num  int
	var num2 int = 1
	fmt.Println   ("0: ", num)
	fmt.Println   ("1: ", num2)
	z := 10 // only works inside functions
	fmt.Println   ("10: ", z)
}
