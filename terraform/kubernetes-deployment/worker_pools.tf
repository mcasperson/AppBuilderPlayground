data "octopusdeploy_worker_pools" "ubuntu_worker_pool" {
  partial_name = "Hosted Ubuntu"
  take = 1
}