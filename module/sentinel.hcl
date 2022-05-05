module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}

policy "restrict-gce-machine-type" {
    source = "./restrict-gce-machine-type.sentinel"
    enforcement_level = "advisory"
}
