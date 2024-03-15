module "network" {
  source = "/dev/network"
}

module "compute" {
  source = "/dev/compute"
}

module "storage" {
  source = "/dev/storage"
}
