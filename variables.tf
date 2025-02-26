variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region to deploy resources to"
  type        = string
  default     = "us-central1"
}

variable "user_email" {
  description = "Email address of the user to grant IAM permissions"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources to"
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Environment name for resources"
  type        = string
  default     = "dev"
}

variable "user_object_id" {
  description = "Azure AD Object ID of the user to grant permissions"
  type        = string
}
