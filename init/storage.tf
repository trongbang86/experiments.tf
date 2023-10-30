resource "aws_s3_bucket" "terraform-states" {
    bucket = "terraform-states-${var.common.my_hash}"

    tags = {
        Name = "terraform-states"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption-config" {
    bucket = aws_s3_bucket.terraform-states.id
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm     = "AES256"
        }
    }
}