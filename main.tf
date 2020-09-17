data "ibm_pi_image" "PowerVS_images" {
    pi_image_name        = "${var.image_name}"
    pi_cloud_instance_id = "${var.power_instance_id}"
}

resource "ibm_pi_network" "PowerVS_networks" {
  count                = 1
  pi_network_name      = "${var.networkname}"
  pi_cloud_instance_id = "${var.power_instance_id}"
  pi_network_type      = "pub-vlan"
}

data "ibm_pi_public_network" "dsnetwork" {
#  depends_on           = ["ibm_pi_network.PowerVS_networks"]
  pi_cloud_instance_id = "${var.power_instance_id}"
}

resource "ibm_pi_instance" "PowerVS_instance" {
    pi_memory             = "${var.memory}"
    pi_processors         = "${var.processors}"
    pi_instance_name      = "${var.vm_name}"
    pi_proc_type          = "${var.proc_type}"
#   pi_migratable         = "${var.migratable}"
    pi_image_id           = "${data.ibm_pi_image.PowerVS_images.id}"
#   pi_volume_ids         = []
    pi_network_ids        = ["${data.ibm_pi_public_network.dsnetwork.id}"]
    pi_key_pair_name      = "${var.ssh_key_name}"
    pi_sys_type           = "${var.system_type}"
#   pi_replication_policy = "${var.replication_policy}"
    pi_replicants         = "${var.replicants}"
    pi_cloud_instance_id  = "${var.power_instance_id}"
}
