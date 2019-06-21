variable "owner" {
  description = "Propietario del proyecto"
  type        = string
}

variable "project" {
  description = "Nombre del proyecto"
  type        = string
}

variable "env" {
  description = " 	Entorno de despliegue"
  type        = string
}

variable "endpoint_configuration" {
  type        = list
  default     = []
}