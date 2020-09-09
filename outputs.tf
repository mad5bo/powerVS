output "ip_address" {
    value = "${ibm_pi_instance.pvminstance.addresses}"
}
