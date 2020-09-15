#####################################################################
##
##      Created 9/8/20 by IBMDemo.
##
#####################################################################
provider "ibm" {
    ibmcloud_api_key = "${var.ibmcloud_api_key}"
    region           = "${var.ibmcloud_region}"
    zone             = "${var.ibmcloud_zone}"
}
