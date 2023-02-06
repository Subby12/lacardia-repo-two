variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "iamuser" {
  type    = list(any)
  default = ["akintoye", "akinsola"]
}