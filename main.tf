#####################################################################
##
##      Created 9/8/20 by IBMDemo. for PowerVS-IBMi
##
#####################################################################

data "ibm_pi_network" "power_networks" {
    count                = "${length(var.networks)}"
    pi_network_name      = "${var.networks[count.index]}"
    pi_cloud_instance_id = "${var.power_instance_id}"
}

data "ibm_pi_image" "power_images" {
#    pi_image_name        = "${var.image_name}"
    pi_image_name        = "ibmi73vm"
    pi_cloud_instance_id = "${var.power_instance_id}"
}

resource "ibm_pi_instance" "pvminstance" {
    pi_memory             = "${var.memory}"
    pi_processors         = "${var.processors}"
    pi_instance_name      = "${var.vm_name}"
    pi_proc_type          = "${var.proc_type}"
#    pi_migratable         = "${var.migratable}"
    pi_image_id           = "${data.ibm_pi_image.power_images.id}"
#    pi_image_id           = "${data.ibm_pi_image.power_images.imageid}"
#    pi_image_id           = "${data.ibm_pi_image.power_images.imageid}"
    pi_volume_ids         = []
    pi_network_ids        = ["${data.ibm_pi_network.power_networks.*.networkid}"]
    pi_key_pair_name      = "${var.ssh_key_name}"
    pi_sys_type           = "${var.system_type}"
    pi_replication_policy = "${var.replication_policy}"
#    pi_replication_scheme = "${var.replication_scheme}"
    pi_replicants         = "${var.replicants}"
 #   pi_cloud_instance_id  = "${var.power_instance_id}"
    pi_cloud_instance_id  = "30295a9a-9ffa-4b5b-8b7d-efa06f3d38a7"

}
