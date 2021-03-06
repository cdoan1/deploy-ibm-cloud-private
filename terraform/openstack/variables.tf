################################################################
# Module to deploy IBM Cloud Private
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Licensed Materials - Property of IBM
#
# Copyright IBM Corp. 2017.
#
################################################################

variable "openstack_user_name" {
    description = "The user name used to connect to OpenStack"
    default = "my_user_name"
}

variable "openstack_password" {
    description = "The password for the user"
    default = "my_password"
}

variable "openstack_project_name" {
    description = "The name of the project (a.k.a. tenant) used"
    default = "ibm-default"
}

variable "openstack_domain_name" {
    description = "The domain to be used"
    default = "Default"
}

variable "openstack_auth_url" {
    description = "The endpoint URL used to connect to OpenStack"
    default = "https://<HOSTNAME>:5000/v3/"
}

variable "openstack_image_id" {
    description = "The ID of the image to be used for deploy operations"
    default = "my_image_id"
}

variable "openstack_flavor_id_master_node" {
    description = "The ID of the flavor to be used for ICP master node deploy operations"
    default = "my_flavor_id"
}

variable "openstack_flavor_id_worker_node" {
    description = "The ID of the flavor to be used for ICP worker node deploy operations"
    default = "my_flavor_id"
}

variable "openstack_network_name" {
    description = "The name of the network to be used for deploy operations"
    default = "my_network_name"
}

variable "openstack_ssh_key_file" {
    description = "The path to the private SSH key file"
    default = "<path to the private SSH key file>"
}

variable "icp_install_user" {
    description = "The user with sudo access across nodes (users section of cloud-init)"
    default = "ubuntu"
}

variable "icp_install_user_password" {
   description = "Password for sudo access (leave empty if using passwordless sudo access)"
   default = ""
}

variable "icp_num_workers" {
    description = "The number of ICP worker nodes to provision"
    default = 1
}

variable "icp_edition" {
    description = "ICP edition - either 'ee' for Enterprise Edition or 'ce' for Community Edition"
    default = "ce"
}

variable "icp_version" {
    description = "ICP version number"
    default = "2.1.0"
}

variable "icp_architecture" {
    description = "x86 or ppc64le"
    default = "ppc64le"
}

variable "icp_download_location" {
    description = "HTTP wget location for ICP Enterprise Edition - ignored for community edition"
    default = "http://LOCATION_OF_ICP_ENTERPRISE_EDITION.tar.gz"
}
