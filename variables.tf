variable "name" {
  type        = string
}

variable "chart" {
  type        = string
}

variable "namespace" {
  type        = string
}

variable "version" {
  type        = string
}

variable "create_namespace" {
  type        = string
}

variable "values_files" {
    type = list["string"]
}