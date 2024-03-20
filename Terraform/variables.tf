variable "ip_ssh" {
  description = "IP que poderá se conectar via ssh"
  type        = string
}

variable "region_name" {
  description = "Nome da região para provisionamento da insfraestrutura"
  type        = string
}

variable "keypar_name" {
  description = "Nome da Key Pair para acesso via SSH"
  type        = string
}