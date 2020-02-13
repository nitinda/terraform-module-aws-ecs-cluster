resource "aws_ecs_cluster" "ecs_cluster" {
  name               = var.name
  capacity_providers = var.capacity_providers
  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider_strategy
    content {
      base              = lookup(default_capacity_provider_strategy.value, "base", null)
      capacity_provider = default_capacity_provider_strategy.value.capacity_provider
      weight            = lookup(default_capacity_provider_strategy.value, "weight", null)
    }
  }
  dynamic "setting" {
    for_each = var.setting
    content {
      name  = lookup(setting.value, "name", "containerInsights")
      value = lookup(setting.value, "value", "disabled")
    }
  }
  tags = var.tags
}

