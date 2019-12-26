variable "mylist" {
  type  = "${list(value1, value2)}"
}
variable "mysecondlist" {
  type = "list"
  default = [value01, value02]
}
