module "gcp_web_server" {
    source = "./modules/gcp-web-server"
    instance_name = "${var.instance_name}-${local.project_sufix}"
    instance_labels = var.instance_labels
    instance_image = data.google_compute_image.web-server_image.self_link
    instance_machine_type = var.instance_machine_type["micro"]
    vpc_name = "${var.vpc_name}-${local.project_sufix}"
    vpc_subnet_name = "${var.vpc_subnet_name}-${local.project_sufix}"
    vpc_subnet_cidr = var.vpc_subnet_cidr
}
