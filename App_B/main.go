



package main

import (
	"log"
	"net/http"
)

func main() {
	fs := http.FileServer(http.Dir("./html"))
	http.Handle("/", fs)

	log.Print("Listening on :9921...")
	err := http.ListenAndServe(":9921", nil)
	if err != nil {
		log.Fatal(err)
	}
}
