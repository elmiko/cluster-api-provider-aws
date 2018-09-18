// Your aws account user name
variable "aws_user" {
  type = "string"
}

variable "cluster_domain" {
  type = "string"
}

variable "cluster_namespace" {
  type = "string"
}

variable "cluster_name" {
  type = "string"
}

variable "aws_region" {
  type    = "string"
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = "string"
  default = "10.0.0.0/16"
}

variable "vpc_public_networks" {
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
  ]
}

variable "vpc_private_networks" {
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
  ]
}

// only needed if we want to dynamically generate
// the manifests
variable "container_images" {
  description = "Container images to use"
  type        = "map"

  default = {
    aws_machine_controller = "openshift/origin-aws-machine-controllers"
    cluster_apiserver      = "gcr.io/k8s-cluster-api/cluster-apiserver:0.0.6"
    controller_manager     = "gcr.io/k8s-cluster-api/controller-manager:0.0.7"
    etcd                   = "k8s.gcr.io/etcd:3.1.12"
  }
}
