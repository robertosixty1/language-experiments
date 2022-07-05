package main

import "fmt"

func main() {
	defer fmt.Println("world") // exec this

	fmt.Println("hello") // after this
}
