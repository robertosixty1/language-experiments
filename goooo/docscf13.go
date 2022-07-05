package main

import "fmt"

func main() {
	fmt.Println("counting")

	for i := 0; i < 10; i++ {
		defer fmt.Println(i) // exec all of this...
	}

	fmt.Println("done") // ...after that
}
