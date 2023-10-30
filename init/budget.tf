module "aws_budgets" {
  source  = "github.com/getindata/terraform-aws-budget"

  budgets = {
    default = {
      limit_amount = var.common.max_budget
    }
  }

  default_notifications = {
    default-actual-100 = {
      comparison_operator        = "GREATER_THAN"
      threshold                  = 100
      threshold_type             = "PERCENTAGE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = []
    }
  }

  default_email_addresses = [var.common.subscriber_email]
}