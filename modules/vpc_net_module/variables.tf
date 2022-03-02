variable "vnet" {
  type = string
}

variable "ip_block" {
  default = ["10.1.0.0/16"]
}

variable "vnet-location" {
  default = "westus2"
}

variable "vnet-rg" {

}