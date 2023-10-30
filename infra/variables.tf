variable "common" {
    type = object ({
        max_elements = number
        max_budget = number
        subscriber_email = string
    })
}
