provider "aws" {
  region = "us-west-2"  # Cambia esto a tu región preferida
}

resource "aws_dynamodb_table" "employees" {
  name           = "Employees"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "EmployeeID"

  attribute {
    name = "EmployeeID"
    type = "S"
  }

  attribute {
    name = "LastName"
    type = "S"
  }

  global_secondary_index {
    name            = "LastNameIndex"
    hash_key        = "LastName"
    projection_type = "ALL"
  }

  tags = {
    Name        = "EmployeesTable"
    Environment = "Production"
  }
}