variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "Employees"
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The primary key for the DynamoDB table"
  type        = string
  default     = "EmployeeID"
}

variable "attributes" {
  description = "The attributes for the DynamoDB table"
  type = list(object({
    name = string
    type = string
  }))
  default = [
    {
      name = "EmployeeID"
      type = "S"
    },
    {
      name = "LastName"
      type = "S"
    }
  ]
}