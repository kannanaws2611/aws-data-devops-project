module "networking" {
  source = "./modules/networking"
}
 
module "s3" {
  source = "./modules/s3"
}
 
module "ecs" {
  source = "./modules/ecs"
}
 
module "iam" {
  source = "./modules/iam"
}
 
module "redshift" {
  source = "./modules/redshift"
}
 
module "monitoring" {
  source = "./modules/monitoring"
}
