variable "ibmcloud_api_key" {}

provider "ibm" {
  ibmcloud_api_key    = var.ibmcloud_api_key
}

#data ibm_resource_group "resource_group" {
#  name = "Default"
#}

resource ibm_container_cluster "tfcluster-test" {
    name            = "tfcluster-test"
    datacenter      = "dal10"
    machine_type    = "u2c.2x4"
    hardware        = "shared"
#    public_vlan_id  = "<public_vlan_ID_dal10>"
#    private_vlan_id = "<private_vlan_ID_dal10>"

    public_vlan_id  = "2822586"
    private_vlan_id = "2731392"


    kube_version = "1.18"

    default_pool_size = 2

    public_service_endpoint  = "true"
    private_service_endpoint = "true"

#    resource_group_id = data.ibm_resource_group.resource_group.id
}
