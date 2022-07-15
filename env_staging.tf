resource "aws_dynamodb_table" "terraform-state-staging" {
    name           = "terraform-state-staging"
    read_capacity  = 20
    write_capacity = 20
    hash_key       = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }

    lifecycle {
        prevent_destroy = true
    }
}