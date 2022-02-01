provider "aws" {
  region = "us-east-1"
}

module "elasticache_redis" {
  source = "github.com/turnerlabs/terraform-aws-elasticache-redis?ref=v2.2"

  cluster_id         = "myteam-myapp-dev"
  engine_version     = "2.8.24"
  instance_type      = "cache.m3.medium"
  maintenance_window = "sun:05:00-sun:06:00"
  vpc_id             = "vpc-d070efb3"
  private_subnet_ids = "subnet-020d8b59,subnet-13f50b64"

