variable "bucket_name" {
}

variable "log_bucket_name" {
}

variable "lifecycle_glacier_transition_days" {
  description = "The number of days after object creation when the object is archived into Glacier."
  type        = number
  default     = 90
}

variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  type        = bool
  default     = false
}

variable "enabled" {
  description = "A boolean that indicates this module is enabled. Resources are not created if it is set to false."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Specifies object tags key and value. This applies to all resources created by this module."
  type        = map(string)
  default = {
    "Terraform" = true
  }
}
