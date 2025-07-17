package main

import "fmt"

var Version = "0.0.0"

// Greet returns a greeting message for the given name.
func Greet(name string) string {
	if name == "" {
		return "Hello, World!"
	}
	return fmt.Sprintf("Hello, %s!", name)
}

func main() {
	fmt.Println("Version => %s", Version)
	fmt.Println(Greet("Go Developer"))
}
