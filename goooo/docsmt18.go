package main

import "fmt"

func Pic(dx, dy int) [][]uint8 {
	slice := make([][]uint8, dy)
	for i := range slice {
		slice[i] = make([]uint8, dx)
	}
	return slice
}

func main() {
	fmt.Println(Pic(10, 10))
}
