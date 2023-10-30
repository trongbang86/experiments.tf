locals {
    common = {
        max_elements = var.max_elements
        max_budget = var.max_budget
        subscriber_email = var.subscriber_email
        my_hash = var.my_hash
    }
}


module init {
    source = "./init"
    common = local.common
    
}

module infra {
    source = "./infra"
    common = local.common
}


