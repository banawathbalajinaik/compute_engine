module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "restrict-gce-machine-type" {
    source = "./restrict-gce-machine-type.sentinel"
    enforcement_level = "advisory"
}
