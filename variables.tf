#------------ VARIABLES FOR CONFIGURING AWS PROFILE -------------#

variable "profile_name" {
  type = string
  default = "iam_akshaya"
}

variable "region_name" {
  type = string
  default = "ap-south-1"
}

#------------ VARIABLES FOR VPC -------------#

variable "vpc_id" {
  type = string
  default = "vpc-f9011e91"
}

#------------ VARIABLES FOR KUBERNETES CLUSTER -------------#

variable "cluster_name" {
  type = string
  default = "minikube"
}

variable "pod_img" {
  type = string
  default = "wordpress"
}

variable "update_method" {
  type = string
  default = "RollingUpdate"
}

