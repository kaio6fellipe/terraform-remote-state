resource "aws_dynamodb_table" "terraform-state-prod" {
    name           = "terraform-state-prod"
    read_capacity  = 2
    write_capacity = 2
    hash_key       = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }

    lifecycle {
        prevent_destroy = true
    }
}