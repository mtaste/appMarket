package main
import (
        "net/http"
)
func main() {
        http.Handle("/", http.FileServer(http.Dir("dist/")))
        http.ListenAndServe(":8011", nil)
}