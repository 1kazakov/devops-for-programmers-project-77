variable "yc_token" {
  type      = string
  default   = "t1.9euelZqUjI6cjZyXx42NjY6YxpqOkO3rnpWakJeQx4_HiZiSxpfHl5qSkYnl8_dPYl9d-e9WdBIq_N3z9w8RXV3571Z0Eir8.Hes1rwT0zw3kguQn8zBA85FCGjX9RAMj7-cUkK6Z-Jcf80EorO9zFQkiy5Ocmf5-LoWJHA3ohXIKUqPdMtJnCw"
}

variable "yc_cloud_id" {
  type      = string
  sensitive = true
}

variable "yc_folder_id" {
  type      = string
  sensitive = true
}

variable "db_name" {
  type    = string
  default = "redmine"
}

variable "db_user" {
  type    = string
  default = "redmine"
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "datadog_api_key" {
  type      = string
  sensitive = true
}

variable "datadog_app_key" {
  type      = string
  sensitive = true
}