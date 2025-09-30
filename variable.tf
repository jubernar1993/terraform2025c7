variable "instance_type_map" {
    description = "variable for instance type using maps"
    type = map(string)
    default = {
      "prod" = "t3.xlarge"
      "qa" = "t3.medium"
      "dev" = "t3.small"
    }
}
